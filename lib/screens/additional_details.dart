import 'package:chips_input/chips_input.dart';
import 'package:flutter/material.dart';

class AdditionalDetails extends StatefulWidget {
  const AdditionalDetails({Key? key}) : super(key: key);

  @override
  State<AdditionalDetails> createState() => _AdditionalDetailsState();
}

class _AdditionalDetailsState extends State<AdditionalDetails> {
  List<String> mockResults = <String>[
    'Stressful event',
    'Personality',
    'family History',
    'Lonelyness',
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
                          .compareTo(b.toLowerCase().indexOf(lowercaseQuery)));
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
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () => {}, child: const Text("Submit"))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
