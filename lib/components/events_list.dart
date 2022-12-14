import 'package:flutter/material.dart';
import 'package:pfaffhack/models/event.dart';

class EventsList extends StatefulWidget {
  final String title;
  final List<Event> data;
  final VoidCallback? onItemClick;
  const EventsList(
      {required this.title, required this.data, this.onItemClick, super.key});

  @override
  State<EventsList> createState() => _UsersListState();
}

class _UsersListState extends State<EventsList> {
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
                widget.data.length,
                (index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      child: ListTile(
                        onTap: widget.onItemClick,
                        tileColor: const Color(0XffF0F0F0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        leading: CircleAvatar(
                          child: Icon(widget.data[index].iconData),
                        ),
                        title: Text(widget.data[index].title!),
                        subtitle: Text(widget.data[index].venue!),
                      ),
                    ))
          ]),
    );
  }
}
