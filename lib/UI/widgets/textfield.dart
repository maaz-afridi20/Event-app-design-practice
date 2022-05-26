import 'package:flutter/material.dart';

class textFields extends StatelessWidget {
  final String? text;
  final bool? isPasswordField;
  final IconData? suffixIcon;
  final IconData? prefixIcon;

  textFields({
    Key? key,
    this.text,
    this.isPasswordField = false,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: isPasswordField!,
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: Icon(suffixIcon),
        ),
      ),
    );
  }
}
