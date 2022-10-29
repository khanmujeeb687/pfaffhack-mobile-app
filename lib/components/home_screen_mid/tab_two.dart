import 'package:flutter/material.dart';
import 'package:pfaffhack/components/events_list.dart';

import '../../data/events_data.dart';

class TabTwoMid extends StatelessWidget {
  const TabTwoMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [EventsList(title: "Upcoming events", data: events_data)],
    );
  }
}
