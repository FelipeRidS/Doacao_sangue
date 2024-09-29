import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/rests/centros_doacao_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await CentrosDeDoacaoRest(dio).getCentrosDeDoacao();
});

class ConsultarCentrosDoacaoView extends ConsumerWidget {
  final bool delete;
  const ConsultarCentrosDoacaoView({super.key, this.delete = false});

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
                            : "Consulta de Centros de doação",
                        subtitulo: delete
                            ? "Deletar registro de centro de doação"
                            : "Veja abaixo os centros de doação cadastrados no sistema"),
                    ...data.map((confia) {
                      return ListTile(
                        onTap: delete
                            ? () async {
                                await CentrosDeDoacaoRest(dio)
                                    .deleteCentroDeDoacao(
                                        confia.codCentroDoacao);
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    createSnackbar(
                                        titulo:
                                            "Centro de doação deletado com sucesso"));
                                Navigator.pop(context);
                              }
                            : null,
                        title: Text('Nome do local: ${confia.nomeLocal}'),
                        subtitle: Text('Endereço: ${confia.endereco}'),
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
