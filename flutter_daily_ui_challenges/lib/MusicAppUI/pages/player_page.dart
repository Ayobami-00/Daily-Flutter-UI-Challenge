import 'package:flutter/material.dart';
import '../utils/hex_color_util.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
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
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Playing from",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "Excuse me for being Antisocial",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        )
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 40.0,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 6,
                child: Container(
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
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/Roddy-Rich.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "The Box",
                              style: TextStyle(
                                color: mainGreenColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Roddy Ricch",
                              style: TextStyle(
                                color: mainGreenColor.withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: mainGreenColor,
                                  ),
                                  Icon(
                                    Icons.share_outlined,
                                    color: mainGreenColor,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1:20",
                                    style: TextStyle(
                                      color: mainGreenColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: SliderTheme(
                                      data: SliderThemeData(
                                        thumbColor: HexColor("87fffb"),
                                        activeTrackColor: HexColor("0d544c"),
                                        inactiveTrackColor:
                                            mainGreenColor.withOpacity(0.2),
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
                                  Text(
                                    "4:03",
                                    style: TextStyle(
                                      color: mainGreenColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.fast_rewind,
                                    color: mainGreenColor,
                                    size: 70.0,
                                  ),
                                  Icon(
                                    Icons.pause,
                                    color: mainGreenColor,
                                    size: 70.0,
                                  ),
                                  Icon(
                                    Icons.fast_forward,
                                    color: mainGreenColor,
                                    size: 70.0,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.replay,
                                          color: mainGreenColor,
                                          size: 20.0,
                                        ),
                                        Text(
                                          "Re-Up",
                                          style: TextStyle(
                                            color: mainGreenColor,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.play_arrow_outlined,
                                          color: mainGreenColor,
                                          size: 20.0,
                                        ),
                                        Text(
                                          "2.1M",
                                          style: TextStyle(
                                            color: mainGreenColor,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.comment_bank_outlined,
                                          color: mainGreenColor,
                                          size: 20.0,
                                        ),
                                        Text(
                                          "2.1M",
                                          style: TextStyle(
                                            color: mainGreenColor,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: mainGreenColor,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: mainGreenColor,
                                size: 20.0,
                              ),
                              Text(
                                "Lyrics",
                                style: TextStyle(
                                  color: mainGreenColor.withOpacity(0.6),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
