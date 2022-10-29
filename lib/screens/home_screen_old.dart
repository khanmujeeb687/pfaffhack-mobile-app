import 'package:flutter/material.dart';
import 'package:pfaffhack/components/button.dart';
import 'package:pfaffhack/components/home_screen_old/next_event.dart';
import 'package:pfaffhack/components/home_screen_old/tab_one.dart';
import 'package:pfaffhack/components/home_screen_old/tab_two.dart';
import 'package:pfaffhack/components/location_card.dart';

class HomeScreenOld extends StatefulWidget {
  const HomeScreenOld({super.key});

  @override
  State<HomeScreenOld> createState() => _HomeScreenOldState();
}

class _HomeScreenOldState extends State<HomeScreenOld> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      bottomSheet: BottomSheet(
        builder: ((context) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 100,
              color: Colors.transparent,
              child: Button(
                title: currentTab == 0
                    ? "Click here for previous appointments"
                    : "Go back to current Appointment",
                onTap: () => setState(() {
                  currentTab = 1 - currentTab;
                }),
              ),
            )),
        onClosing: () {},
      ),
      body: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const LocationCard(),
              const SizedBox(
                height: 50,
              ),
              if (currentTab == 0) const TabOneOld(),
              if (currentTab == 1) const TabTwoOld(),
            ],
          )),
    );
  }
}
