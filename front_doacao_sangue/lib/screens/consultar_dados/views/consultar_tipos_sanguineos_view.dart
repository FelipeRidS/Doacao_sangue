import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await TiposSanguineosRest(dio).getTiposSanguineos();
});

class ConsultarTiposSanguineosView extends ConsumerWidget {
  final bool delete;
  const ConsultarTiposSanguineosView({super.key, this.delete = false});

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
                        titulo: delete
                            ? "Deletar registro"
                            : "Consulta de tipos sanguineos",
                        subtitulo: delete
                            ? "Deletar registro de tipo sanguineo"
                            : "Veja abaixo os tipos sanguineos cadastrados no sistema"),
                    ...data.map((confia) {
                      return ListTile(
                        onTap: delete
                            ? () async {
                                try {
                                  await TiposSanguineosRest(dio)
                                      .deleteTipoSanguineo(
                                          confia.codTipoSanguineo);
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      createSnackbar(
                                          titulo:
                                              "Tipo sanguíneo deletado com sucesso"));
                                  Navigator.pop(context);
                                } catch (e, a) {
                                  print(e);
                                  print(a);
                                }
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
                          child: Text(confia.nomeTipoSang),
                        ),
                        title: Text(
                            'Mls disponíveis: ${confia.totalDisponivel}ml'),
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
