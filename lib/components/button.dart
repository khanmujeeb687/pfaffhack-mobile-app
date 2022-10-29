import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool notExpand;
  final bool selected;

  const Button(
      {required this.title,
      required this.onTap,
      this.notExpand = false,
      this.selected = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    Widget widget = ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                selected ? Colors.blue : Colors.grey),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: onTap,
        child: Text(title));
    if (notExpand) return widget;
    return Row(
      children: [
        Expanded(child: widget),
      ],
    );
  }
}
