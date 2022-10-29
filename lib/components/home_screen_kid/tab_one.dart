import 'package:flutter/material.dart';
import 'package:pfaffhack/components/users_list.dart';

class TabOneKid extends StatelessWidget {
  const TabOneKid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UsersList(title: "Next Appointments"),
        const SizedBox(
          height: 30,
        ),
        const UsersList(title: "Available Appointments")
      ],
    );
  }
}
