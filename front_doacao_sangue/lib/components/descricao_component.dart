import 'package:flutter/material.dart';

class DescricaoComponent extends StatelessWidget {
  const DescricaoComponent({
    super.key,
    required this.titulo,
    required this.subtitulo,
  });

  final String titulo;
  final String subtitulo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(fontSize: 50),
        ),
        Text(
          subtitulo,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
