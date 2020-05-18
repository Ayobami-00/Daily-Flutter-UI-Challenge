import 'package:flutter/material.dart';
import 'package:flutter_daily_ui_challenges/AutomotiveServiceAppUI/automotive_service_main_page.dart';
class AutomotiveServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AutomotiveServiceMainPage(),
    );
  }
}