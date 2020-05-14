import 'package:flutter/material.dart';

import 'package:flutter_daily_ui_challenges/ApartmentBookingAppUI/home_page.dart';

class ApartmentBookingApp extends StatefulWidget {
  @override
  _ApartmentBookingAppState createState() => _ApartmentBookingAppState();
}

class _ApartmentBookingAppState extends State<ApartmentBookingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}