import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0XffE8E8E8),
          borderRadius: BorderRadius.circular(35)),
      child: Row(children: const [
        Icon(Icons.my_location),
        SizedBox(
          width: 15,
        ),
        Expanded(
            child: Text(
                "Kurt schumacher straße - 20 , Kaiserslautern, Germany, 67763"))
      ]),
    );
  }
}
