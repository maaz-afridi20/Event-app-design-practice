import 'package:flutter/material.dart';

class myCheckBox extends StatefulWidget {
  final String mytext;
  final IconData? lastIcon;
  myCheckBox({
    Key? key,
    required this.mytext,
    this.lastIcon,
  }) : super(key: key);

  @override
  State<myCheckBox> createState() => _myCheckBoxState();
}

class _myCheckBoxState extends State<myCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              }),
          Text(widget.mytext),
        ],
      ),
    );
  }
}
