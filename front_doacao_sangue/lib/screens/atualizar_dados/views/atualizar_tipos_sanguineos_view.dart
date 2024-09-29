import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_tipo_sanguineo_view.dart';
import 'package:front_doacao_sangue/src/rests/tipos_sanguineos_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await TiposSanguineosRest(dio).getTiposSanguineos();
});

class AtualizarTiposSanguineosView extends ConsumerWidget {
  const AtualizarTiposSanguineosView({super.key});

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
                        subtitulo: "Atualizar registro de tipo sanguíneo"),
                    ...data.map((confia) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CadastrarTipoSanguineoView(
                                          itemToUpdate: confia)));
                        },
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
