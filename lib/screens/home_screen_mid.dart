import 'package:flutter/material.dart';
import 'package:pfaffhack/components/button.dart';
import 'package:pfaffhack/components/home_screen_kid/tab_one.dart';
import 'package:pfaffhack/components/home_screen_kid/tab_two.dart';
import 'package:pfaffhack/components/home_screen_mid/tab_one.dart';
import 'package:pfaffhack/components/home_screen_mid/tab_two.dart';
import 'package:pfaffhack/components/home_screen_old/tab_two.dart';
import 'package:pfaffhack/components/location_card.dart';
import 'package:pfaffhack/components/users_list.dart';

class HomeScreenMid extends StatefulWidget {
  const HomeScreenMid({super.key});

  @override
  State<HomeScreenMid> createState() => _HomeScreenKidState();
}

class _HomeScreenKidState extends State<HomeScreenMid> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/coin.png",
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text("150")
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Button(
        title: "+ Add Event",
        onTap: () => {},
        notExpand: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            const LocationCard(),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                children: [
                  Button(
                      title: "Current",
                      onTap: () => setState(() {
                            currentTab = 0;
                          }),
                      notExpand: true,
                      selected: currentTab == 0),
                  const SizedBox(
                    width: 10,
                  ),
                  Button(
                      title: "History",
                      onTap: () => setState(() {
                            currentTab = 1;
                          }),
                      notExpand: true,
                      selected: currentTab == 1),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            if (currentTab == 0) const TabOneMid(),
            if (currentTab == 1) const TabTwoMid()
          ]),
        ),
      ),
    );
  }
}
