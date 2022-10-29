import 'package:flutter/material.dart';
import 'package:pfaffhack/models/event.dart';

List<Event> get events_data {
  List<Event> data = [
    Event(
        title: "Pizza day",
        venue: "pfaffplatz kaiserslautern",
        iconData: Icons.no_food_outlined),
    Event(
        title: "Stand Up Comedy",
        venue: "pfaffplatz kaiserslautern",
        iconData: Icons.mood_outlined),
    Event(
        title: "Motivational talk",
        venue: "pfaffplatz kaiserslautern",
        iconData: Icons.directions_walk),
    Event(
        title: "Happy evening",
        venue: "pfaffplatz kaiserslautern",
        iconData: Icons.emoji_emotions_sharp),
  ];
  data.shuffle();
  return data;
}
