import 'package:flutter/material.dart';
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

final generateData = FutureProvider.autoDispose((ref) async {
  return [
    await RetiradasDeSangueRest(dio).getRetiradasDeSangue(),
    await TiposSanguineosRest(dio).getTiposSanguineos()
  ];
});

class ConsultaRetiradasDeSangueView extends ConsumerWidget {
  final bool delete;
  const ConsultaRetiradasDeSangueView({super.key, this.delete = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(generateData).when(
            data: (data) {
              return Padding(
                padding: safeArea,
                child: ListView(children: [
                  DescricaoComponent(
                      titulo: delete
                          ? "Deletar registro"
                          : "Consulta de Retiradas de sangue",
                      subtitulo: delete
                          ? "Deletar registro de retirada de sangue"
                          : "Veja abaixo as retiradas de sangue cadastradas no sistema"),
                  ...(data.first as List<RetiradasDeSangue>).map((confia) {
                    final tipoSanguineo = (data[1] as List<TiposSanguineos>)
                        .firstWhere((e) =>
                            e.codTipoSanguineo == confia.codTipoSanguineo);
                    return ListTile(
                      onTap: delete
                          ? () async {
                              await RetiradasDeSangueRest(dio)
                                  .deleteRetiradaDeSangue(
                                      confia.codRetiradaSangue);
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  createSnackbar(
                                      titulo: "Retirada deletada com sucesso"));
                              Navigator.pop(context);
                            }
                          : null,
                      leading: Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(234),
                          color: Colors.grey.withAlpha(38),
                        ),
                        child: Text(tipoSanguineo.nomeTipoSang),
                      ),
                      title: Text('${confia.mlSangue}ml'),
                    );
                  }),
                ]),
              );
            },
            loading: () => const LoadingView(titulo: "Carregando..."),
            error: (error, stackTrace) =>
                const ErrorView(titulo: "Ocorreu um erro"),
          ),
    );
  }
}
