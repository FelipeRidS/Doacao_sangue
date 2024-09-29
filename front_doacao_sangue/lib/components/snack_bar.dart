import 'package:flutter/material.dart';

SnackBar createSnackbar({required String titulo, String? subtitulo}) {
  return SnackBar(
    content: Column(
      children: [
        Text(
          titulo,
          style: const TextStyle(color: Colors.black),
        ),
        if (subtitulo != null)
          Text(
            subtitulo,
            style: const TextStyle(color: Colors.black),
          ),
      ],
    ),
    backgroundColor: Colors.white,
  );
}
