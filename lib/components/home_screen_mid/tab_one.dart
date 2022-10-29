import 'package:flutter/material.dart';
import 'package:pfaffhack/components/events_list.dart';
import 'package:pfaffhack/data/users_data.dart';

class TabOneMid extends StatelessWidget {
  const TabOneMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [EventsList(title: "Upcoming events", data: kids)],
    );
  }
}
