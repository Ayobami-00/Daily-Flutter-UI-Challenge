import 'package:flutter/material.dart';
import 'package:flutter_daily_ui_challenges/FoodApplication/home_page.dart';

class FoodApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodApplicationMainPage(),
    );
  }
}