import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:front_doacao_sangue/components/custom_text_form_field.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/centros_doacao.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/funcionarios.dart';
import 'package:front_doacao_sangue/src/rests/centros_doacao_rest.dart';
import 'package:front_doacao_sangue/src/rests/doadores_rest.dart';
import 'package:front_doacao_sangue/src/rests/funcionarios_rest.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

class CadastrarCentroDoacaoView extends HookConsumerWidget {
  final CentrosDeDoacao? itemToUpdate;
  const CadastrarCentroDoacaoView({super.key, this.itemToUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nomeLocal = useState<String>(itemToUpdate?.nomeLocal ?? '');
    final endereco = useState<String>(itemToUpdate?.endereco ?? '');

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: safeArea,
        child: ListView(
          children: [
            DescricaoComponent(
                titulo: itemToUpdate != null
                    ? "Atualizar Centro de doação"
                    : "Cadastrar Centro de doação",
                subtitulo: "Insira abaixo os dados do centro de doação"),
            CustomTextFormField(
              initialValue: itemToUpdate?.nomeLocal,
              lable: "Nome do local",
              onChanged: (text) {
                nomeLocal.value = text;
              },
            ),
            CustomTextFormField(
              initialValue: itemToUpdate?.endereco,
              lable: "Endereço",
              onChanged: (text) {
                endereco.value = text;
              },
            ),
            FilledButton(
              onPressed: nomeLocal.value.isNotEmpty && endereco.value.isNotEmpty
                  ? itemToUpdate == null
                      ? () async {
                          await CentrosDeDoacaoRest(dio)
                              .createCentroDeDoacao(CentrosDeDoacao(
                            codCentroDoacao: 0,
                            endereco: endereco.value,
                            nomeLocal: nomeLocal.value,
                          ).toJson());
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            createSnackbar(
                                titulo:
                                    "Centro de doações cadastrado com sucesso"),
                          );
                          Navigator.pop(context);
                        }
                      : () async {
                          await CentrosDeDoacaoRest(dio).updateCentroDeDoacao(
                              id: itemToUpdate!.codCentroDoacao,
                              centroDeDoacao: CentrosDeDoacao(
                                codCentroDoacao: 0,
                                endereco: endereco.value,
                                nomeLocal: nomeLocal.value,
                              ).toJson());
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            createSnackbar(
                                titulo:
                                    "Centro de doações  atualizado com sucesso"),
                          );
                          Navigator.pop(context);
                        }
                  : null,
              child: const Text("Cadastrar local"),
            ),
          ],
        ),
      ),
    );
  }
}
