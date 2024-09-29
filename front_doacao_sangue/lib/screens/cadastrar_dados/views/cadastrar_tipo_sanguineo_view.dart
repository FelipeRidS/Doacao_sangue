import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:front_doacao_sangue/components/custom_text_form_field.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CadastrarTipoSanguineoView extends HookConsumerWidget {
  final TiposSanguineos? itemToUpdate;
  const CadastrarTipoSanguineoView({super.key, this.itemToUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nomeTipoSanguineo =
        useState<String>(itemToUpdate?.nomeTipoSang ?? '');
    final totalDisponivel = useState<int>(itemToUpdate?.totalDisponivel ?? 0);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: safeArea,
        child: ListView(
          children: [
            DescricaoComponent(
                titulo: itemToUpdate != null
                    ? "Atualizar Tipo sanguíneo"
                    : "Cadastrar Tipo sanguíneo",
                subtitulo: "Insira abaixo os dados do tipo sanguineo"),
            CustomTextFormField(
              initialValue: itemToUpdate?.nomeTipoSang,
              lable: "Nome do tipo sanguineo",
              onChanged: (text) {
                nomeTipoSanguineo.value = text;
              },
            ),
            CustomTextFormField(
              initialValue: itemToUpdate?.totalDisponivel.toString(),
              lable: "Total disponível",
              onChanged: (text) {
                totalDisponivel.value = int.tryParse(text) ?? -1;
              },
            ),
            FilledButton(
              onPressed: nomeTipoSanguineo.value.isNotEmpty &&
                      totalDisponivel.value >= 0
                  ? itemToUpdate == null
                      ? () async {
                          await TiposSanguineosRest(dio)
                              .createTipoSanguineo(TiposSanguineos(
                            codTipoSanguineo: 0,
                            nomeTipoSang: nomeTipoSanguineo.value,
                            totalDisponivel: totalDisponivel.value,
                          ).toJson());
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            createSnackbar(
                                titulo:
                                    "Tipo sanguíneo cadastrado com sucesso"),
                          );
                          Navigator.pop(context);
                        }
                      : () async {
                          await TiposSanguineosRest(dio).updateTipoSanguineo(
                              id: itemToUpdate!.codTipoSanguineo,
                              tipoSanguineo: TiposSanguineos(
                                codTipoSanguineo: 0,
                                nomeTipoSang: nomeTipoSanguineo.value,
                                totalDisponivel: totalDisponivel.value,
                              ).toJson());
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            createSnackbar(
                                titulo:
                                    "Tipo sanguíneo atualizadp com sucesso"),
                          );
                          Navigator.pop(context);
                        }
                  : null,
              child: const Text("Cadastrar tipo sanguineo"),
            ),
          ],
        ),
      ),
    );
  }
}
