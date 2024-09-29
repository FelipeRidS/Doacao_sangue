import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/atualizar_dados_screen.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/cadastrar_dados_screen.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/consultar_dados_screen.dart';
import 'package:front_doacao_sangue/screens/deletar_dados/deletar_dados_screen.dart';
import 'package:front_doacao_sangue/screens/gerar_relatorios/gerar_relatorios_screen.dart';

final buttonsDataList = [
  MenuButtonData(
    icon: const Icon(Icons.app_registration_rounded),
    titulo: "Cadastrar dados",
    desc: "Cadastrar um novo registro no banco",
    redirect: (BuildContext context) {
      print(context.widget);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const CadastrarDadosScreen()));
    },
  ),
  MenuButtonData(
    icon: const Icon(Icons.search),
    titulo: "Consultar dados",
    desc: "Consultar dados existentes no banco",
    redirect: (BuildContext context) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ConsultarDadosScreen()));
    },
  ),
  MenuButtonData(
    icon: const Icon(Icons.update),
    titulo: "Atualizar dados",
    desc: "Atualizar dados existentes no banco",
    redirect: (BuildContext context) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const AtualizarDadosScreen()));
    },
  ),
  MenuButtonData(
    icon: const Icon(Icons.delete),
    titulo: "Deletar dados",
    desc: "Deletar registros do banco",
    redirect: (BuildContext context) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DeletarDadosScreen()));
    },
  ),
  MenuButtonData(
    icon: const Icon(Icons.save),
    titulo: "Gerar relatório",
    desc: "Gerar relatórios diversos",
    redirect: (BuildContext context) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const GerarRelatoriosScreen()));
    },
  ),
];

class MenuButtonData {
  final Icon icon;
  final String titulo;
  final String desc;
  final Function(BuildContext) redirect;

  const MenuButtonData({
    required this.icon,
    required this.titulo,
    required this.desc,
    required this.redirect,
  });
}
