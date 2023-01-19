import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
  }) : super(key: key);

  final Function() onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        backgroundColor: color,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
