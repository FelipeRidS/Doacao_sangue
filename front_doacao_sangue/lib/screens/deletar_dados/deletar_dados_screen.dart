import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/main_button.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/screens/tables_button_data.dart';

class DeletarDadosScreen extends StatelessWidget {
  const DeletarDadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: safeArea,
        child: ListView(
          children: [
            const DescricaoComponent(
                titulo: "Deletar dados",
                subtitulo:
                    "Escolha uma das tabelas abaixo para deletar dados..."),
            ...List.generate(tablesButtonData.length, (index) {
              final buttonData = tablesButtonData[index];
              return MainButton(
                titulo: buttonData.titulo,
                desc: buttonData.desc,
                icon: buttonData.icon,
                redirect: (context) =>
                    buttonData.redirect(context, "deletarDados"),
              );
            })
          ],
        ),
      ),
    );
  }
}
