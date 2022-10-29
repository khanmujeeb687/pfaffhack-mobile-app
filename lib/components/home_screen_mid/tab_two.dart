import 'package:flutter/material.dart';
import 'package:pfaffhack/components/users_list.dart';

class TabTwoMid extends StatelessWidget {
  const TabTwoMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UsersList(title: "Old Events"),
      ],
    );
  }
}
