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
import 'package:front_doacao_sangue/src/classes/classes_padrao/doacoes.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/funcionarios.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:front_doacao_sangue/src/rests/centros_doacao_rest.dart';
import 'package:front_doacao_sangue/src/rests/doacoes_rest.dart';
import 'package:front_doacao_sangue/src/rests/doadores_rest.dart';
import 'package:front_doacao_sangue/src/rests/funcionarios_rest.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final generateDropdownEntries = FutureProvider.autoDispose((ref) async {
  final doadores = await DoadoresRest(dio).getDoadores();
  final funcionarios = await FuncionariosRest(dio).getFuncionarios();
  final centros = await CentrosDeDoacaoRest(dio).getCentrosDeDoacao();

  return {
    'doadores': doadores,
    'funcionarios': funcionarios,
    'centros': centros,
  };
});

class CadastrarDoacaoView extends HookConsumerWidget {
  final Doacoes? itemToUpdate;
  const CadastrarDoacaoView({super.key, this.itemToUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codDoador = useState<int>(itemToUpdate?.codDoador ?? 0);
    final codFuncionario = useState<int>(itemToUpdate?.codFuncionario ?? 0);
    final codCentroDoacao = useState<int>(itemToUpdate?.codCentroDoacao ?? 0);
    final mlSangue = useState<int>(itemToUpdate?.mlSangue ?? 0);

    return ref.watch(generateDropdownEntries).when(
        data: (tiposSanguineos) {
          final doadores = tiposSanguineos['doadores'] as List<Doadores>;
          final funcionarios =
              tiposSanguineos['funcionarios'] as List<Funcionarios>;
          final centros = tiposSanguineos['centros'] as List<CentrosDeDoacao>;

          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: safeArea,
              child: ListView(
                children: [
                  DescricaoComponent(
                      titulo: itemToUpdate != null
                          ? "Atualizar Doação"
                          : "Cadastrar Doação",
                      subtitulo: "Insira abaixo os dados da doação"),
                  CustomTextFormField(
                    initialValue: itemToUpdate?.mlSangue.toString(),
                    lable: "Mls doados",
                    onChanged: (text) {
                      mlSangue.value = int.tryParse(text) ?? 0;
                    },
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    value: doadores
                        .where((e) => e.codDoador == codDoador.value)
                        .firstOrNull,
                    decoration: const InputDecoration(
                        labelText: "Doadores registrados"),
                    items: doadores.map((item) {
                      return DropdownMenuItem(
                          value: item, child: Text(item.nome));
                    }).toList(),
                    onChanged: (codSang) =>
                        codDoador.value = codSang!.codDoador,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    value: centros
                        .where(
                            (e) => e.codCentroDoacao == codCentroDoacao.value)
                        .firstOrNull,
                    decoration: const InputDecoration(
                        labelText: "Centros de doações registrados"),
                    items: centros.map((item) {
                      return DropdownMenuItem(
                          value: item, child: Text(item.nomeLocal));
                    }).toList(),
                    onChanged: (codSang) =>
                        codCentroDoacao.value = codSang!.codCentroDoacao,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    value: funcionarios
                        .where((e) => e.codFuncionario == codFuncionario.value)
                        .firstOrNull,
                    decoration: const InputDecoration(
                        labelText: "Funcionários registrados"),
                    items: funcionarios.map((item) {
                      return DropdownMenuItem(
                          value: item, child: Text(item.nome));
                    }).toList(),
                    onChanged: (codSang) =>
                        codFuncionario.value = codSang!.codFuncionario,
                  ),
                  const SizedBox(height: 30),
                  FilledButton(
                    onPressed: codCentroDoacao.value != 0 &&
                            codFuncionario.value != 0 &&
                            codDoador.value != 0 &&
                            mlSangue.value != 0
                        ? itemToUpdate == null
                            ? () async {
                                final tipoId = doadores
                                    .firstWhere(
                                        (e) => e.codDoador == codDoador.value)
                                    .codTipoSanguineo;
                                final tipoSanguineo =
                                    await TiposSanguineosRest(dio)
                                        .getTipoSanguineoById(tipoId);

                                await DoacoesRest(dio).createDoacao(Doacoes(
                                  codCentroDoacao: codCentroDoacao.value,
                                  codDoacao: 0,
                                  codDoador: codDoador.value,
                                  codFuncionario: codFuncionario.value,
                                  mlSangue: mlSangue.value,
                                  data: DateTime.now()
                                      .toString()
                                      .substring(0, 10),
                                ).toJson());

                                await TiposSanguineosRest(dio)
                                    .updateTipoSanguineo(
                                        id: tipoId,
                                        tipoSanguineo: TiposSanguineos(
                                          codTipoSanguineo: 0,
                                          nomeTipoSang:
                                              tipoSanguineo.nomeTipoSang,
                                          totalDisponivel:
                                              tipoSanguineo.totalDisponivel +
                                                  mlSangue.value,
                                        ).toJson());

                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Doação cadastrada com sucesso"));
                                Navigator.pop(context);
                              }
                            : () async {
                                await DoacoesRest(dio).updateDoacao(
                                    id: itemToUpdate!.codDoacao,
                                    doacao: Doacoes(
                                      codCentroDoacao: codCentroDoacao.value,
                                      codDoacao: 0,
                                      codDoador: codDoador.value,
                                      codFuncionario: codFuncionario.value,
                                      mlSangue: mlSangue.value,
                                      data: DateTime.now()
                                          .toString()
                                          .substring(0, 10),
                                    ).toJson());

                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Doação atualizada com sucesso"));
                                Navigator.pop(context);
                              }
                        : null,
                    child: const Text("Cadastrar doação"),
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
