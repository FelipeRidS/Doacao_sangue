import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.titulo,
    required this.desc,
    required this.icon,
    required this.redirect,
  });
  final String titulo;
  final String desc;
  final Icon icon;
  final Function(BuildContext) redirect;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulo),
      subtitle: Text(desc),
      leading: icon,
      onTap: () => redirect(context),
    );
  }
}
