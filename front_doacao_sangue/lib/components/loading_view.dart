import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key, required this.titulo, this.subtitulo});
  final String titulo;
  final String? subtitulo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(titulo),
          if (subtitulo != null) Text(subtitulo!),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
