import 'package:flutter/material.dart';
import 'package:pfaffhack/components/bottomsheets/confirm_bottom_sheet.dart';
import 'package:pfaffhack/components/button.dart';

class NextEventCard extends StatelessWidget {
  const NextEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://as2.ftcdn.net/v2/jpg/03/24/31/95/1000_F_324319518_WiZhxutSbnSUvE05LN4RPtVE9SJgoDVB.jpg"),
        ),
        title: const Text(
          "Walk with Vrajesh",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("@ 9 AM on Thursday"),
            const SizedBox(
              height: 15,
            ),
            Button(
                title: "Cancel Event",
                onTap: () {
                  showConfirmationSheet(context);
                })
          ],
        ),
      ),
    );
  }
}
