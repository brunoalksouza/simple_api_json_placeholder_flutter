import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscureText;

  const CustomTextFieldWidget(
      {super.key,
      required this.onChanged,
      required this.label,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: label,
      ),
      onChanged: onChanged,
    );
  }
}
