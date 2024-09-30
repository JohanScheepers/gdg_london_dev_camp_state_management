import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gdg_london_dev_camp_state_management/models/dev_mentors.dart';
import 'package:gdg_london_dev_camp_state_management/models/sessions.dart';

const TextStyle appBarText =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

const TextStyle cardTextheading =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purple);
const TextStyle cardTextbold =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);

List<String> event = [
  'Throughout the Devcamp, participants will receive comprehensive guidance, and will be able to update their skill level.',
  'This is an Intermediate level camp, you should have some level of understanding or have built an app with Flutter',
  'The curriculum is thoughtfully structured to provide a thorough understanding of state management concepts and their practical application.',
  'A standout feature of FlutterDevCamp is the chance to engage in live Q&A sessions with the authors and creators of popular state management libraries like Riverpod.',
  'This direct interaction allows attendees to gain insights into the libraries" inner workings, best practices, and potential optimisations, making the learning experience incredibly enriching.',
  'By the end of the 4-week program, participants will have honed their state management skills and will be well-equipped to handle complex state management scenarios in their Flutter projects confidently.',
  'FlutterDevCamp is a must-attend for Flutter developers looking to elevate their applications" efficiency and build top-notch user experiences through effective state management.',
  'This is an intermediary-level Devcamp'
];

List<DevMentors> mentors = [
  DevMentors(
      name: "master",
      image: "assets/images/leader_des.png",
      description: "The Leader")
];

List<Sessions> sessions = [
  Sessions(
    "Introduaction to Flutter",
    "Sumith & Renuka",
    "1h",
    "2024/09/24",
  ),
  Sessions(
      "Flutter basics layout and widgets", "Franklin", "2-3h", "2024/09/28"),
  Sessions("Flutter and API integration", "Anthony", "1h", "2024/10/03"),
  Sessions("Flutter with Firebase", "Nishtha", "2-3h", "2024, 10, 5"),
  Sessions("Riverpod ith API", "Shree", "1h", "2024/10/10"),
  Sessions("Riverpod with Firebase", "Shree", "2-3h", "2024/10/12"),
  Sessions("Riverpod with advance consept", "Shree", "2-3h", "2024/10/17"),
  Sessions("Graduation", "Shree", "1h", "2024/10/19")
];
