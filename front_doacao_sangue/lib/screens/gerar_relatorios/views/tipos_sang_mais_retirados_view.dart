import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/rests/relatorios_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await RelatoriosRest(dio).getTiposSanguineosMaisRetirados();
});

class TiposSangMaisRetiradosView extends ConsumerWidget {
  const TiposSangMaisRetiradosView({super.key});

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
                      titulo: "Doadores que mais doaram",
                      subtitulo:
                          "Doadores que doaram mais mls de sangue para a instituição",
                    ),
                    ...data.map(
                      (confia) {
                        return ListTile(
                          title: Text(
                              'Tipo Sanguíneo: ${confia.nomeTipoSang}\nTotal em estoque: ${confia.totalDisponivel}'),
                          subtitle: Text(
                            'Total retirado: ${confia.qtdMls}ml\nRetiradas: ${confia.qtdRegistros} retiradas',
                          ),
                        );
                      },
                    )
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
