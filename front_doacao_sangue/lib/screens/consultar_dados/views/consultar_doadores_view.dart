import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/rests/doadores_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await DoadoresRest(dio).getDoadores();
});

class ConsultarDoadoresView extends ConsumerWidget {
  final bool delete;
  const ConsultarDoadoresView({super.key, this.delete = false});

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
                            : "Consulta de Doadores",
                        subtitulo: delete
                            ? "Deletar registro de doador"
                            : "Veja abaixo os doadores cadastrados no sistema"),
                    ...data.map(
                      (confia) {
                        return ListTile(
                          onTap: delete
                              ? () async {
                                  await DoadoresRest(dio)
                                      .deleteDoador(confia.codDoador);
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      createSnackbar(
                                          titulo:
                                              "Doador deletado com sucesso"));
                                  Navigator.pop(context);
                                }
                              : null,
                          title:
                              Text('Nome: ${confia.nome} ${confia.sobrenome}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Telefone: ${confia.telefone}'),
                              Text('Cpf: ${confia.cpf ?? 'Não informado'}'),
                            ],
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
