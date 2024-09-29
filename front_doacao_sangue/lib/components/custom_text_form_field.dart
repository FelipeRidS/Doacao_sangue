import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.initialValue,
    this.validator,
    required this.lable,
    required this.onChanged,
    this.keyboardType,
  });

  final String? initialValue;
  final String? Function(String?)? validator;
  final String lable;
  final void Function(String) onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: TextFormField(
        initialValue: initialValue,
        keyboardType: keyboardType,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
          label: Text(lable),
        ),
        validator: validator,
      ),
    );
  }
}
