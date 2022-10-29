import 'package:flutter/material.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage(
                "assets/bg.webp",
              ),
              fit: BoxFit.cover)),
      height: 240,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: const Text(
        "Hey Fighter, You are \ngoing to rock today! 😃💫✨",
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 18, color: Colors.white),
      ),
    );
  }
}
