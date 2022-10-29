import 'package:chips_input/chips_input.dart';
import 'package:flutter/material.dart';
import 'package:pfaffhack/screens/home_screen_kid.dart';
import 'package:pfaffhack/screens/home_screen_mid.dart';
import 'package:pfaffhack/screens/home_screen_old.dart';

import '../components/button.dart';

class AdditionalDetailsScreen extends StatefulWidget {
  final bool isOld;
  final bool isMid;
  const AdditionalDetailsScreen(
      {this.isOld = false, this.isMid = false, Key? key})
      : super(key: key);

  @override
  State<AdditionalDetailsScreen> createState() => _AdditionalDetailsState();
}

class _AdditionalDetailsState extends State<AdditionalDetailsScreen> {
  List<String> mockResults = <String>[
    'Stressful event',
    'Personality',
    'family History',
    'Loneliness',
    'Anger'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Additional Details"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(hintText: "Occupation"),
              ),
              const SizedBox(
                height: 50,
              ),
              if (widget.isOld)
                ChipsInput(
                  minLines: 1,
                  findSuggestions: (String query) {
                    if (query.isNotEmpty) {
                      var lowercaseQuery = query.toLowerCase();
                      final results = mockResults.where((profile) {
                        return profile
                                .toLowerCase()
                                .contains(query.toLowerCase()) ||
                            profile.toLowerCase().contains(query.toLowerCase());
                      }).toList(growable: false)
                        ..sort((a, b) => a
                            .toLowerCase()
                            .indexOf(lowercaseQuery)
                            .compareTo(
                                b.toLowerCase().indexOf(lowercaseQuery)));
                      return results;
                    }
                    return mockResults;
                  },
                  onChanged: (data) {
                    print(data);
                  },
                  chipBuilder: (context, state, String profile) {
                    return InputChip(
                      key: ObjectKey(profile),
                      label: Text(profile),
                      onDeleted: () => state.deleteChip(profile),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    );
                  },
                  decoration: const InputDecoration(hintText: 'Select Illness'),
                  suggestionBuilder: (context, String profile) {
                    return ListTile(
                      key: ObjectKey(profile),
                      title: Text(profile),
                    );
                  },
                ),
              const SizedBox(
                height: 50,
              ),
              Button(
                  title: "Submit",
                  onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        if (widget.isMid) {
                          return const HomeScreenMid();
                        } else {
                          return const HomeScreenOld();
                        }
                      }))),
            ],
          ),
        ),
      ),
    );
  }
}
