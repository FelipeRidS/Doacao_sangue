import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doacoes.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:front_doacao_sangue/src/rests/doacoes_rest.dart';
import 'package:front_doacao_sangue/src/rests/doadores_rest.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return [
    await DoacoesRest(dio).getDoacoes(),
    await TiposSanguineosRest(dio).getTiposSanguineos(),
    await DoadoresRest(dio).getDoadores(),
  ];
});

class ConsultarDoacoesView extends ConsumerWidget {
  final bool delete;
  const ConsultarDoacoesView({super.key, this.delete = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(generateData).when(
            data: (data) {
              return Padding(
                padding: safeArea,
                child: ListView(
                  children: [
                    DescricaoComponent(
                        titulo:
                            delete ? "Deletar registro" : "Consulta de Doações",
                        subtitulo: delete
                            ? "Deletar registro de doação"
                            : "Veja abaixo as doações cadastradas no sistema"),
                    ...(data.first as List<Doacoes>).map((confia) {
                      final doador = (data[2] as List<Doadores>)
                          .where((e) => e.codDoador == confia.codDoador)
                          .firstOrNull;
                      final tipoSanguineo = (data[1] as List<TiposSanguineos>)
                          .where((e) =>
                              e.codTipoSanguineo == doador?.codTipoSanguineo)
                          .firstOrNull;
                      return ListTile(
                        onTap: delete
                            ? () async {
                                await DoacoesRest(dio)
                                    .deleteDoacao(confia.codDoacao);
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo: "Doação deletada com sucesso"));
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
                          child: Text(tipoSanguineo?.nomeTipoSang ?? 'Del'),
                        ),
                        title: Text(
                            'Doador: ${doador?.nome ?? "Doador deletado"}'),
                        subtitle: Text('Total doado: ${confia.mlSangue}ml'),
                      );
                    })
                  ],
                ),
              );
            },
            loading: () => const LoadingView(titulo: "Carregando..."),
            error: (error, stackTrace) =>
                const ErrorView(titulo: "Ocorreu um erro"),
          ),
    );
  }
}
