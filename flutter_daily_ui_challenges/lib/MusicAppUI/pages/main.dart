import 'package:flutter/material.dart';

import 'package:flutter_daily_ui_challenges/MusicAppUI/pages/player_page.dart';

import 'song_list_page.dart';

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Colors.transparent)),
      // home: PlayerPage(),
      home: SongListPage(),
    );
  }
}
