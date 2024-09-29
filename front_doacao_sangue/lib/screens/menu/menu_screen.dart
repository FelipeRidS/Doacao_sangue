import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/main_button.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/screens/menu/menu_buttons_data.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: safeArea,
        child: ListView(
          children: [
            const DescricaoComponent(
                titulo: "Menu inicial",
                subtitulo: "Escolha uma das opções abaixo..."),
            ...List.generate(buttonsDataList.length, (index) {
              final buttonData = buttonsDataList[index];
              return MainButton(
                desc: buttonData.desc,
                icon: buttonData.icon,
                redirect: buttonData.redirect,
                titulo: buttonData.titulo,
              );
            })
          ],
        ),
      ),
    );
  }
}
