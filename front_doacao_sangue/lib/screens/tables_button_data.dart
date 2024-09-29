import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/views/atualizar_centros_doacao_view.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/views/atualizar_doacoes_view.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/views/atualizar_doadores_view.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/views/atualizar_funcionarios_view.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/views/atualizar_retiradas_de_sangue_view.dart';
import 'package:front_doacao_sangue/screens/atualizar_dados/views/atualizar_tipos_sanguineos_view.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_centro_doacao_view.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_doacao_view.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_doador_view.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_funcionario_view.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_retirada_sangue.dart';
import 'package:front_doacao_sangue/screens/cadastrar_dados/views/cadastrar_tipo_sanguineo_view.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/views/consulta_retiradas_de_sangue_view.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/views/consultar_centros_doacao_view.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/views/consultar_doacoes_view.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/views/consultar_doadores_view.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/views/consultar_funcionarios_view.dart';
import 'package:front_doacao_sangue/screens/consultar_dados/views/consultar_tipos_sanguineos_view.dart';

final tablesButtonData = [
  TableButtonData(
    icon: const Icon(Icons.water_drop_sharp),
    titulo: "Tipos sanguíneos",
    desc: "Tipos sanguíneos e suas quantidades disponíveis",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => switch (origin) {
            "cadastrarDados" => const CadastrarTipoSanguineoView(),
            "consultarDados" => const ConsultarTiposSanguineosView(),
            "atualizarDados" => const AtualizarTiposSanguineosView(),
            "deletarDados" => const ConsultarTiposSanguineosView(delete: true),
            String() => throw UnimplementedError(),
          },
        ),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.person_3),
    titulo: "Funcionários",
    desc: "Funcionários da instituição",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => switch (origin.toString()) {
            "cadastrarDados" => const CadastrarFuncionarioView(),
            "consultarDados" => const ConsultarFuncionariosView(),
            "atualizarDados" => const AtualizarFuncionariosView(),
            "deletarDados" => const ConsultarFuncionariosView(delete: true),
            String() => throw UnimplementedError(),
          },
        ),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.person),
    titulo: "Doadores",
    desc: "Informações gerais dos doadores registrados",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => switch (origin) {
            "cadastrarDados" => const CadastrarDoadorView(),
            "consultarDados" => const ConsultarDoadoresView(),
            "atualizarDados" => const AtualizarDoadoresView(),
            "deletarDados" => const ConsultarDoadoresView(delete: true),
            String() => throw UnimplementedError(),
          },
        ),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.water_damage),
    titulo: "Centros de doação",
    desc: "Centros disponíveis para as coletas",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => switch (origin) {
            "cadastrarDados" => const CadastrarCentroDoacaoView(),
            "consultarDados" => const ConsultarCentrosDoacaoView(),
            "atualizarDados" => const AtualizarCentrosDoacaoView(),
            "deletarDados" => const ConsultarCentrosDoacaoView(delete: true),
            String() => throw UnimplementedError(),
          },
        ),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.download_sharp),
    titulo: "Doações",
    desc: "Registros das doações realizadas",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => switch (origin) {
            "cadastrarDados" => const CadastrarDoacaoView(),
            "consultarDados" => const ConsultarDoacoesView(),
            "atualizarDados" => const AtualizarDoacoesView(),
            "deletarDados" => const ConsultarDoacoesView(delete: true),
            String() => throw UnimplementedError(),
          },
        ),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.upload_sharp),
    titulo: "Retiradas de sangue",
    desc: "Registro das saídas de sangue da instituição",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => switch (origin) {
            "cadastrarDados" => const CadastrarRetiradaSangue(),
            "consultarDados" => const ConsultaRetiradasDeSangueView(),
            "atualizarDados" => const AtualizaretiradasDeSangueView(),
            "deletarDados" => const ConsultaRetiradasDeSangueView(delete: true),
            String() => throw UnimplementedError(),
          },
        ),
      );
    },
  ),
];

class TableButtonData {
  final Icon icon;
  final String titulo;
  final String desc;
  final Function(BuildContext, String) redirect;

  const TableButtonData({
    required this.icon,
    required this.titulo,
    required this.desc,
    required this.redirect,
  });
}
