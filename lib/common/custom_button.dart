import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({Key? key, required this.buttonText, required this.onTap})
      : super(key: key);
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          double.infinity,
          50,
        ),
      ),
      onPressed: () {},
    );
  }
}
