import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:front_doacao_sangue/components/custom_text_form_field.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:front_doacao_sangue/src/rests/doadores_rest.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final generateDropdownEntries = FutureProvider.autoDispose(
    (ref) async => await TiposSanguineosRest(dio).getTiposSanguineos());

class CadastrarDoadorView extends HookConsumerWidget {
  final Doadores? itemToUpdate;
  const CadastrarDoadorView({super.key, this.itemToUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nome = useState<String>(itemToUpdate?.nome ?? '');
    final sobrenome = useState<String>(itemToUpdate?.sobrenome ?? '');
    final cpf = useState<String?>(itemToUpdate?.cpf ?? '');
    final telefone = useState<String>(itemToUpdate?.telefone ?? '');
    final codTipoSanguineo = useState<int>(itemToUpdate?.codTipoSanguineo ?? 0);
    final endereco = useState<String>(itemToUpdate?.endereco ?? '');

    return ref.watch(generateDropdownEntries).when(
        data: (tiposSanguineos) {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: safeArea,
              child: ListView(
                children: [
                  DescricaoComponent(
                      titulo: itemToUpdate != null
                          ? "Atualizar Doador"
                          : "Cadastrar Doador",
                      subtitulo: "Insira abaixo os dados do doador"),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.nome,
                    lable: "Nome do doador",
                    onChanged: (text) {
                      nome.value = text;
                    },
                  ),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.sobrenome,
                    lable: "Sobrenome do doador",
                    onChanged: (text) {
                      sobrenome.value = text;
                    },
                  ),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.cpf,
                    lable: "Cpf do doador (opcional)",
                    onChanged: (text) {
                      cpf.value = text.isEmpty ? null : text;
                    },
                    keyboardType: TextInputType.number,
                  ),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.telefone,
                    lable: "Telefone do doador",
                    onChanged: (text) {
                      telefone.value = text;
                    },
                    keyboardType: TextInputType.phone,
                  ),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.endereco,
                    lable: "Endereco do doador",
                    onChanged: (text) {
                      endereco.value = text;
                    },
                    keyboardType: TextInputType.streetAddress,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    value: tiposSanguineos
                        .where(
                            (e) => e.codTipoSanguineo == codTipoSanguineo.value)
                        .firstOrNull,
                    decoration: const InputDecoration(
                        labelText: "Tipo sanguíneo do doador"),
                    items: (tiposSanguineos).map((item) {
                      return DropdownMenuItem(
                          value: item, child: Text(item.nomeTipoSang));
                    }).toList(),
                    onChanged: (codSang) => codTipoSanguineo.value =
                        (codSang as TiposSanguineos).codTipoSanguineo,
                  ),
                  const SizedBox(height: 30),
                  FilledButton(
                    onPressed: nome.value.isNotEmpty &&
                            sobrenome.value.isNotEmpty &&
                            telefone.value.isNotEmpty &&
                            codTipoSanguineo.value != 0 &&
                            endereco.value.isNotEmpty
                        ? itemToUpdate == null
                            ? () async {
                                await DoadoresRest(dio).createDoador(Doadores(
                                  codDoador: 0,
                                  nome: nome.value,
                                  sobrenome: sobrenome.value,
                                  cpf: cpf.value,
                                  telefone: telefone.value,
                                  codTipoSanguineo: codTipoSanguineo.value,
                                  endereco: endereco.value,
                                ).toJson());
                                print(await DoadoresRest(dio).getDoadores());
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Doador cadastrado com sucesso"));
                                Navigator.pop(context);
                              }
                            : () async {
                                await DoadoresRest(dio).updateDoador(
                                    id: itemToUpdate!.codDoador,
                                    doador: Doadores(
                                      codDoador: 0,
                                      nome: nome.value,
                                      sobrenome: sobrenome.value,
                                      cpf: cpf.value,
                                      telefone: telefone.value,
                                      codTipoSanguineo: codTipoSanguineo.value,
                                      endereco: endereco.value,
                                    ).toJson());
                                print(await DoadoresRest(dio).getDoadores());
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Doador atualizado com sucesso"));
                                Navigator.pop(context);
                              }
                        : null,
                    child: const Text("Cadastrar doador"),
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
