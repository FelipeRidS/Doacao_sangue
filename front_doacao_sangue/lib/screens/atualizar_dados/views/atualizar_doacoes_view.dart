import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_doacao_view.dart';
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

class AtualizarDoacoesView extends ConsumerWidget {
  const AtualizarDoacoesView({super.key});

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
                      subtitulo: "Atualizar registro de doação",
                    ),
                    ...(data.first as List<Doacoes>).map((confia) {
                      final doador = (data[2] as List<Doadores>)
                          .where((e) => e.codTipoSanguineo == confia.codDoador)
                          .firstOrNull;
                      final tipoSanguineo = (data[1] as List<TiposSanguineos>)
                          .where((e) =>
                              e.codTipoSanguineo == doador?.codTipoSanguineo)
                          .firstOrNull;
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CadastrarDoacaoView(
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
