import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/rests/relatorios_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await RelatoriosRest(dio).getCentrosComMaisColetas();
});

class CentrosMaisDoacoesView extends ConsumerWidget {
  const CentrosMaisDoacoesView({super.key});

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
                    const DescricaoComponent(
                      titulo: "Centros de doação com maior coleta",
                      subtitulo:
                          "Centros de doação com mais mls de sangue coletados para a instituição",
                    ),
                    ...data.map(
                      (confia) {
                        return ListTile(
                          title: Text(
                              'Nome do local: ${confia.nomeLocal}\nEndereço: ${confia.endereco}'),
                          subtitle: Text(
                            'Total coletado: ${confia.qtdMls}ml\nColetas: ${confia.qtdRegistros} coletas',
                          ),
                        );
                      },
                    )
                  ],
                ),
              );
            },
            loading: () => const LoadingView(titulo: "Carregando..."),
            error: (error, stackTrace) {
              print(error);
              print(stackTrace);

              return const ErrorView(titulo: "Ocorreu um erro");
            },
          ),
    );
  }
}
