import 'package:flutter/material.dart';
import 'package:pfaffhack/components/users_list.dart';
import 'package:pfaffhack/data/users_data.dart';

class TabTwoKid extends StatelessWidget {
  const TabTwoKid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UsersList(
          title: "Old Appointments",
          data: fighters,
        ),
      ],
    );
  }
}
