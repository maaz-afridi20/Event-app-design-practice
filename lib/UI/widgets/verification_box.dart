import 'package:flutter/material.dart';

class VerificationBox extends StatelessWidget {
  final String boxText;

  VerificationBox({Key? key, required this.boxText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          boxText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
