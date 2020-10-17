import 'package:flutter/material.dart';
import '../model/song.dart';
import '../utils/hex_color_util.dart';

class SongListPage extends StatefulWidget {
  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> {
  @override
  Widget build(BuildContext context) {
    Color mainGreenColor = HexColor("0c534b");
    double sliderValue = 0.3;

    return Scaffold(
        backgroundColor: mainGreenColor,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    Text(
                      "Excuse me for being Antisocial",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    Song song = song_list[index];
                    // This check is to check if we have reached the last item to give
                    // it enough padding to avoid showing under the bottom sheet
                    return index != song_list.length - 1
                        ? _listTileContent(song)
                        : Column(
                            children: [
                              _listTileContent(song),
                              SizedBox(
                                height: 120.0,
                              )
                            ],
                          );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 40.0),
                  itemCount: song_list.length,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: BottomSheet(
            onClosing: () {},
            builder: (BuildContext context) {
              return Container(
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 80.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/Roddy-Rich.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "The Box",
                                        style: TextStyle(
                                          color: mainGreenColor,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Roddy Ricch",
                                        style: TextStyle(
                                          color:
                                              mainGreenColor.withOpacity(0.2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.fast_rewind,
                                    color: mainGreenColor,
                                    size: 30.0,
                                  ),
                                  Icon(
                                    Icons.pause,
                                    color: mainGreenColor,
                                    size: 30.0,
                                  ),
                                  Icon(
                                    Icons.fast_forward,
                                    color: mainGreenColor,
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SliderTheme(
                          data: SliderThemeData(
                            thumbColor: HexColor("87fffb"),
                            activeTrackColor: HexColor("0d544c"),
                            inactiveTrackColor: mainGreenColor.withOpacity(0.2),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 7,
                            ),
                          ),
                          child: Slider(
                            value: sliderValue,
                            onChanged: (v) {
                              setState(() {
                                sliderValue = v;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }

  Widget _listTileContent(Song song) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Roddy-Rich.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song.genre,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      song.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      song.artist,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      song.year,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
