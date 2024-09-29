import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/main_button.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/screens/gerar_relatorios/relatorios_geraveis.dart';
import 'package:front_doacao_sangue/screens/tables_button_data.dart';

class GerarRelatoriosScreen extends StatelessWidget {
  const GerarRelatoriosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: safeArea,
        child: ListView(
          children: [
            const DescricaoComponent(
                titulo: "Gerar Relatório",
                subtitulo: "Escolha um dos relatórios para gerar"),
            ...List.generate(relatoriosButtonData.length, (index) {
              final buttonData = relatoriosButtonData[index];
              return MainButton(
                titulo: buttonData.titulo,
                desc: buttonData.desc,
                icon: buttonData.icon,
                redirect: (context) => buttonData.redirect(context, ''),
              );
            })
          ],
        ),
      ),
    );
  }
}
