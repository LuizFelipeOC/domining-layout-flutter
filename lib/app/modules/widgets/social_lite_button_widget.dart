import 'package:flutter/material.dart';

class SocialLiteButtonWidget extends StatelessWidget {
  const SocialLiteButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.pathUrl,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final String pathUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12,
          width: 2,
        ),
      ),
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              pathUrl,
              width: 30,
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
