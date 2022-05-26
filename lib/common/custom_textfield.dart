import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textFieldController,
    required this.hintText,
    required this.passwordField,
  }) : super(key: key);
  final TextEditingController textFieldController;
  final String hintText;
  final bool passwordField;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: passwordField,
      controller: textFieldController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
