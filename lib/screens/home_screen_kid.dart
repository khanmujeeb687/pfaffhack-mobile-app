import 'package:flutter/material.dart';
import 'package:pfaffhack/components/button.dart';
import 'package:pfaffhack/components/home_screen_kid/tab_one.dart';
import 'package:pfaffhack/components/home_screen_kid/tab_two.dart';
import 'package:pfaffhack/components/location_card.dart';
import 'package:pfaffhack/components/users_list.dart';

class HomeScreenKid extends StatefulWidget {
  const HomeScreenKid({super.key});

  @override
  State<HomeScreenKid> createState() => _HomeScreenKidState();
}

class _HomeScreenKidState extends State<HomeScreenKid> {
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
                  width: 6,
                ),
                const Text("150")
              ],
            ),
          )
        ],
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
            if (currentTab == 0) const TabOneKid(),
            if (currentTab == 1) const TabTwoKid()
          ]),
        ),
      ),
    );
  }
}
