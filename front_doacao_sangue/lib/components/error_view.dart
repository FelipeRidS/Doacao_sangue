import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.titulo, this.subtitulo});
  final String titulo;
  final String? subtitulo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(titulo),
          if (subtitulo != null) Text(subtitulo!),
        ],
      ),
    );
  }
}
