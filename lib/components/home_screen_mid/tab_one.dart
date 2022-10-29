import 'package:flutter/material.dart';
import 'package:pfaffhack/components/users_list.dart';

class TabOneMid extends StatelessWidget {
  const TabOneMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UsersList(title: "Upcoming Events"),
      ],
    );
  }
}
