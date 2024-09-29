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
import 'package:front_doacao_sangue/src/classes/classes_padrao/funcionarios.dart';
import 'package:front_doacao_sangue/src/rests/doadores_rest.dart';
import 'package:front_doacao_sangue/src/rests/funcionarios_rest.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

class CadastrarFuncionarioView extends HookConsumerWidget {
  final Funcionarios? itemToUpdate;
  const CadastrarFuncionarioView({super.key, this.itemToUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nome = useState<String>(itemToUpdate?.nome ?? '');
    final cpf = useState<String>(itemToUpdate?.cpf ?? '');
    final email = useState<String>(itemToUpdate?.email ?? '');
    final profissao = useState<String>(itemToUpdate?.profissao ?? '');

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: safeArea,
        child: ListView(
          children: [
            DescricaoComponent(
                titulo: itemToUpdate != null
                    ? "Atualizar Funcionário"
                    : "Cadastrar Funcionário",
                subtitulo: "Insira abaixo os dados do funcionario"),
            CustomTextFormField(
              initialValue: itemToUpdate?.nome,
              lable: "Nome do funcionário",
              onChanged: (text) {
                nome.value = text;
              },
            ),
            CustomTextFormField(
              initialValue: itemToUpdate?.cpf,
              lable: "Cpf do funcionário",
              onChanged: (text) {
                cpf.value = text;
              },
            ),
            CustomTextFormField(
              initialValue: itemToUpdate?.email,
              lable: "Email do funcionário",
              onChanged: (text) {
                email.value = text;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextFormField(
              initialValue: itemToUpdate?.profissao,
              lable: "Profissao do funcionário",
              onChanged: (text) {
                profissao.value = text;
              },
            ),
            FilledButton(
              onPressed: nome.value.isNotEmpty &&
                      cpf.value.isNotEmpty &&
                      email.value.isNotEmpty &&
                      profissao.value.isNotEmpty
                  ? itemToUpdate == null
                      ? () async {
                          await FuncionariosRest(dio)
                              .createFuncionario(Funcionarios(
                            codFuncionario: 0,
                            cpf: cpf.value,
                            email: email.value,
                            nome: nome.value,
                            profissao: profissao.value,
                          ).toJson());
                          print(await DoadoresRest(dio).getDoadores());
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                              createSnackbar(
                                  titulo:
                                      "Funcionário cadastrado com sucesso"));
                          Navigator.pop(context);
                        }
                      : () async {
                          await FuncionariosRest(dio).updateFuncionario(
                              id: itemToUpdate!.codFuncionario,
                              funcionario: Funcionarios(
                                codFuncionario: 0,
                                cpf: cpf.value,
                                email: email.value,
                                nome: nome.value,
                                profissao: profissao.value,
                              ).toJson());
                          print(await DoadoresRest(dio).getDoadores());
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                              createSnackbar(
                                  titulo:
                                      "Funcionário atualizado com sucesso"));
                          Navigator.pop(context);
                        }
                  : null,
              child: const Text("Cadastrar funcionario"),
            ),
          ],
        ),
      ),
    );
  }
}
