import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_centro_doacao_view.dart';
import 'package:front_doacao_sangue/src/rests/centros_doacao_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await CentrosDeDoacaoRest(dio).getCentrosDeDoacao();
});

class AtualizarCentrosDoacaoView extends ConsumerWidget {
  const AtualizarCentrosDoacaoView({super.key});

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
                      titulo: "Atualizar registro",
                      subtitulo: "Atualizar registro de centro de doação",
                    ),
                    ...data.map((confia) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CadastrarCentroDoacaoView(
                                          itemToUpdate: confia)));
                        },
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
