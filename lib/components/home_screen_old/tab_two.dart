import 'package:flutter/material.dart';
import 'package:pfaffhack/components/bottomsheets/rating_bottom_sheet.dart';
import 'package:pfaffhack/components/users_list.dart';
import 'package:pfaffhack/data/users_data.dart';

class TabTwoOld extends StatelessWidget {
  const TabTwoOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UsersList(
            title: "Old Appointments",
            data: kids,
            onItemClick: () => showRatingSheet(context)),
      ],
    );
  }
}
