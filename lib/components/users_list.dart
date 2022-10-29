import 'package:flutter/material.dart';

class UsersList extends StatefulWidget {
  final String title;
  const UsersList({required this.title, super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
                5,
                (index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      child: ListTile(
                        tileColor: const Color(0XffF0F0F0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://image.shutterstock.com/image-photo/portrait-very-old-woman-retired-600w-1132591781.jpg"),
                        ),
                        title: const Text("Persone name"),
                        subtitle: const Text("Suffering from this, that"),
                      ),
                    ))
          ]),
    );
  }
}
