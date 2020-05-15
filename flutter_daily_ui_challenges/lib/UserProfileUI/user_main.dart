import 'package:flutter/material.dart';

import 'package:flutter_daily_ui_challenges/UserProfileUI/home_page.dart';


class UserProfileApp extends StatefulWidget {
  @override
  _UserProfileAppState createState() => _UserProfileAppState();
}

class _UserProfileAppState extends State<UserProfileApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}