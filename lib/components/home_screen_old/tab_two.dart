import 'package:flutter/material.dart';
import 'package:pfaffhack/components/users_list.dart';

class TabTwoOld extends StatelessWidget {
  const TabTwoOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UsersList(title: "Old Appointments"),
      ],
    );
  }
}
