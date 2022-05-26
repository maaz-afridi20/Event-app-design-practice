import 'package:flutter/material.dart';

class ReusableMyForm extends StatelessWidget {
  final String reusableText;
  final IconData lastIcon;
  ReusableMyForm({Key? key, required this.reusableText, required this.lastIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              reusableText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Icon(lastIcon),
          ),
        ],
      ),
    );
  }
}
