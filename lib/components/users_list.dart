import 'package:flutter/material.dart';
import 'package:pfaffhack/models/user.dart';

class UsersList extends StatefulWidget {
  final String title;
  final List<User> data;
  final VoidCallback? onItemClick;
  const UsersList(
      {required this.title, required this.data, this.onItemClick, super.key});

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
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ...List.generate(
                widget.data.length,
                (index) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 3),
                      child: ListTile(
                        onTap: widget.onItemClick,
                        tileColor: const Color(0XffF0F0F0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(widget.data[index].profileUrl!),
                        ),
                        title: Text(widget.data[index].fullName!),
                        subtitle: Text(widget.data[index].email!),
                      ),
                    ))
          ]),
    );
  }
}
