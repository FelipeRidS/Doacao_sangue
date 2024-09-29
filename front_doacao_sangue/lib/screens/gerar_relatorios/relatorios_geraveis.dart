import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/screens/gerar_relatorios/views/centros_mais_doacoes_view.dart';
import 'package:front_doacao_sangue/screens/gerar_relatorios/views/doadores_mais_doacoes_view.dart';
import 'package:front_doacao_sangue/screens/gerar_relatorios/views/tipos_sang_mais_retirados_view.dart';
import 'package:front_doacao_sangue/screens/tables_button_data.dart';

final relatoriosButtonData = [
  TableButtonData(
    icon: const Icon(Icons.person),
    titulo: "Doadores que mais doaram",
    desc: "Doadores que doaram mais mls de sangue para a instituição",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoadoresMaisDoacoesView()),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.person),
    titulo: "Centros de doação com maior coleta",
    desc:
        "Centros de doação com mais mls de sangue coletados para a instituição",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CentrosMaisDoacoesView()),
      );
    },
  ),
  TableButtonData(
    icon: const Icon(Icons.person),
    titulo: "Tipos sanguíneos mais retirados",
    desc: "Tipos sanguineos com mais mls retirados da instituição",
    redirect: (BuildContext context, String origin) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const TiposSangMaisRetiradosView()),
      );
    },
  ),
];
