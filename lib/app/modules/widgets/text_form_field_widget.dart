import 'package:flutter/material.dart';

class TextFormFielWidget extends StatelessWidget {
  const TextFormFielWidget({
    Key? key,
    required this.label,
    required this.obscureText,
    required this.onChange,
    required this.textInputType,
  }) : super(key: key);

  final String label;
  final bool obscureText;
  final Function(String value) onChange;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChange,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.grey,
      ),
      keyboardType: textInputType,
      autofocus: true,
      decoration: InputDecoration(
        floatingLabelStyle: const TextStyle(
          color: Colors.greenAccent,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.greenAccent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.greenAccent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
