import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:front_doacao_sangue/components/custom_text_form_field.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/retiradas_de_sangue.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:front_doacao_sangue/src/rests/retiradas_de_sangue_rest.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final generateDropdownEntries = FutureProvider.autoDispose(
    (ref) async => await TiposSanguineosRest(dio).getTiposSanguineos());

class CadastrarRetiradaSangue extends HookConsumerWidget {
  final RetiradasDeSangue? itemToUpdate;
  const CadastrarRetiradaSangue({super.key, this.itemToUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codTipoSanguineo = useState<int>(itemToUpdate?.codTipoSanguineo ?? 0);
    final mlSangue = useState<int>(itemToUpdate?.mlSangue ?? 0);

    return ref.watch(generateDropdownEntries).when(
        data: (tiposSanguineos) {
          final tipoSanguineo = tiposSanguineos
              .where((e) => e.codTipoSanguineo == codTipoSanguineo.value)
              .firstOrNull;
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: safeArea,
              child: ListView(
                children: [
                  DescricaoComponent(
                      titulo: itemToUpdate != null
                          ? "Atualizar Retirada de sangue"
                          : "Cadastrar Retirada de sangue",
                      subtitulo:
                          "Insira abaixo os dados da retirada de sangue"),
                  DropdownButtonFormField(
                    value: tiposSanguineos
                        .where(
                            (e) => e.codTipoSanguineo == codTipoSanguineo.value)
                        .firstOrNull,
                    decoration: const InputDecoration(
                        labelText: "Tipo sanguíneo retirado"),
                    items: tiposSanguineos.map((item) {
                      return DropdownMenuItem(
                          value: item, child: Text(item.nomeTipoSang));
                    }).toList(),
                    onChanged: (codSang) => codTipoSanguineo.value =
                        (codSang as TiposSanguineos).codTipoSanguineo,
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.mlSangue.toString(),
                    lable: "Quantidade retirada",
                    onChanged: (text) {
                      mlSangue.value = int.tryParse(text) ?? 0;
                    },
                    keyboardType: TextInputType.number,
                    validator: (p0) {
                      return int.tryParse(p0 ?? '') == null ||
                              int.tryParse(p0!)! <=
                                  (tipoSanguineo?.totalDisponivel ?? 100000)
                          ? null
                          : "Valor a retirar excede o valor disponível";
                    },
                  ),
                  FilledButton(
                    onPressed: mlSangue.value != 0 &&
                            codTipoSanguineo.value != 0 &&
                            mlSangue.value <
                                (tipoSanguineo?.totalDisponivel ?? 100000)
                        ? itemToUpdate == null
                            ? () async {
                                final tipoSanguineo =
                                    await TiposSanguineosRest(dio)
                                        .getTipoSanguineoById(
                                            codTipoSanguineo.value);

                                await RetiradasDeSangueRest(dio)
                                    .createRetiradaDeSangue(RetiradasDeSangue(
                                            codRetiradaSangue: 0,
                                            codTipoSanguineo:
                                                codTipoSanguineo.value,
                                            mlSangue: mlSangue.value)
                                        .toJson());
                                await TiposSanguineosRest(dio)
                                    .updateTipoSanguineo(
                                        id: codTipoSanguineo.value,
                                        tipoSanguineo: TiposSanguineos(
                                          codTipoSanguineo: 0,
                                          nomeTipoSang:
                                              tipoSanguineo.nomeTipoSang,
                                          totalDisponivel:
                                              tipoSanguineo.totalDisponivel -
                                                  mlSangue.value,
                                        ).toJson());

                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Retirada cadastrada com sucesso"));
                                Navigator.pop(context);
                              }
                            : () async {
                                await RetiradasDeSangueRest(dio)
                                    .updateRetiradaDeSangue(
                                        id: itemToUpdate!.codRetiradaSangue,
                                        retiradaDeSangue: RetiradasDeSangue(
                                                codRetiradaSangue: 0,
                                                codTipoSanguineo:
                                                    codTipoSanguineo.value,
                                                mlSangue: mlSangue.value)
                                            .toJson());

                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Retirada atualizada com sucesso"));
                                Navigator.pop(context);
                              }
                        : null,
                    child: const Text("Cadastrar retirada"),
                  ),
                ],
              ),
            ),
          );
        },
        error: (_, __) {
          return const Scaffold(
            body: ErrorView(titulo: "Algum erro aconteceu ao carregar tela"),
          );
        },
        loading: () =>
            const Scaffold(body: LoadingView(titulo: "Carregando dados")));
  }
}
