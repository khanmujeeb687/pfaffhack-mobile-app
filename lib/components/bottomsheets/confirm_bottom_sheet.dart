import 'package:flutter/material.dart';
import 'package:pfaffhack/components/button.dart';

class ConfirmBottomSheet extends StatelessWidget {
  const ConfirmBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Are you sure!"),
            SizedBox(
              height: 30,
            ),
            Button(title: "Yes", onTap: () {})
          ]),
    );
  }
}

void showConfirmationSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      builder: (context) {
        return const ConfirmBottomSheet();
      });
}
