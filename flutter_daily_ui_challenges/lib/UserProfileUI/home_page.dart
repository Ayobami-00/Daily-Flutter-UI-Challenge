import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
            flex: 10,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/250?image=20"),
                              fit: BoxFit.cover))),
                ),
                Positioned(
                  left: 24,
                  top: MediaQuery.of(context).size.height / 4.5 - 28,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://picsum.photos/250?image=25"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  right: 24,
                  top: MediaQuery.of(context).size.height / 4.5 + 16,
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Center(
                            child: Text("F",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          )),
                      SizedBox(width: 16),
                      Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Center(
                            child: Text("T",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          )),
                      SizedBox(width: 16),
                      Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Center(
                            child: Text("I",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          )),
                      SizedBox(width: 16),
                      Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Center(
                            child: Text("Y",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          )),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                
                Positioned(
                    left: 24,
                    top: MediaQuery.of(context).size.height / 3,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Festus",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                                SizedBox(height: 4),
                                Text("Flutter, Android Developer",
                                    style: TextStyle(
                                        color: Colors.teal, fontSize: 12))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Text("Gallery",
                                        style: TextStyle(
                                          color: Colors.teal,
                                        ))),
                                Expanded(
                                  flex: 4,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=26"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=28"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=29"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=30"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=31"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=32"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=33"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 12,
                                        ),
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://picsum.photos/250?image=34"),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ],
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Text("Testimonials",
                                        style: TextStyle(
                                          color: Colors.teal,
                                        ))),
                                Expanded(
                                    flex: 9,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 12, top: 8, bottom: 0),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              140,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 2,
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0,
                                                            top: 14,
                                                            right: 12),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text("Anne & John",
                                                            style: TextStyle(
                                                                fontSize: 12)),
                                                        Spacer(),
                                                        Text("12th Nov. 2019",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .grey))
                                                      ],
                                                    ),
                                                  )),
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12.0, top: 7),
                                                  child: Text(
                                                      "Lorem Ipsum is simply dummy text of printing and typesetting industry"
                                                      "Lorem Ipsum has been the industry's standard",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color:
                                                              Colors.black45)),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 6,
                                                  child: GridView.count(
                                                    padding: EdgeInsets.only(
                                                        left: 12,
                                                        bottom: 12,
                                                        top: 12,
                                                        right: 12),
                                                    shrinkWrap: true,
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing: 4,
                                                    crossAxisSpacing: 5,
                                                    childAspectRatio: 7 / 4,
                                                    children: <Widget>[
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=35"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=36"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=37"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=38"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 12, top: 8, bottom: 0),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              140,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 2,
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0,
                                                            top: 14,
                                                            right: 12),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text("Anne & John",
                                                            style: TextStyle(
                                                                fontSize: 12)),
                                                        Spacer(),
                                                        Text("12th Nov. 2019",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .grey))
                                                      ],
                                                    ),
                                                  )),
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12.0, top: 7),
                                                  child: Text(
                                                      "Lorem Ipsum is simply dummy text of printing and typesetting industry"
                                                      "Lorem Ipsum has been the industry's standard",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color:
                                                              Colors.black45)),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 6,
                                                  child: GridView.count(
                                                    padding: EdgeInsets.only(
                                                        left: 12,
                                                        bottom: 12,
                                                        top: 12,
                                                        right: 12),
                                                    shrinkWrap: true,
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing: 4,
                                                    crossAxisSpacing: 5,
                                                    childAspectRatio: 7 / 4,
                                                    children: <Widget>[
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=35"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=36"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=37"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=38"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 12, top: 8, bottom: 0),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              140,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 2,
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0,
                                                            top: 14,
                                                            right: 12),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text("Anne & John",
                                                            style: TextStyle(
                                                                fontSize: 12)),
                                                        Spacer(),
                                                        Text("12th Nov. 2019",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .grey))
                                                      ],
                                                    ),
                                                  )),
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12.0, top: 7),
                                                  child: Text(
                                                      "Lorem Ipsum is simply dummy text of printing and typesetting industry"
                                                      "Lorem Ipsum has been the industry's standard",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color:
                                                              Colors.black45)),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 6,
                                                  child: GridView.count(
                                                    padding: EdgeInsets.only(
                                                        left: 12,
                                                        bottom: 12,
                                                        top: 12,
                                                        right: 12),
                                                    shrinkWrap: true,
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing: 4,
                                                    crossAxisSpacing: 5,
                                                    childAspectRatio: 7 / 4,
                                                    children: <Widget>[
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=35"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=36"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=37"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=38"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 12, top: 8, bottom: 0),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              140,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 2,
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0,
                                                            top: 14,
                                                            right: 12),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text("Anne & John",
                                                            style: TextStyle(
                                                                fontSize: 12)),
                                                        Spacer(),
                                                        Text("12th Nov. 2019",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .grey))
                                                      ],
                                                    ),
                                                  )),
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12.0, top: 7),
                                                  child: Text(
                                                      "Lorem Ipsum is simply dummy text of printing and typesetting industry"
                                                      "Lorem Ipsum has been the industry's standard",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color:
                                                              Colors.black45)),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 6,
                                                  child: GridView.count(
                                                    padding: EdgeInsets.only(
                                                        left: 12,
                                                        bottom: 12,
                                                        top: 12,
                                                        right: 12),
                                                    shrinkWrap: true,
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing: 4,
                                                    crossAxisSpacing: 5,
                                                    childAspectRatio: 7 / 4,
                                                    children: <Widget>[
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=35"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=36"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=37"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/250?image=38"),
                                                            fit: BoxFit.cover),
                                                      )),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),

                    //TRIED THE GRADIENT BUT NOOT WORKING, COMING BACK TO IT SOON.
                                    //     Positioned(
                //   left: 24,
                //   top: MediaQuery.of(context).size.height /3,
                //   bottom: 0,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: <Color>[
                //           Colors.white.withOpacity(0.1),
                //           Colors.white,
                //         ],
                //         begin: Alignment.centerLeft,
                //         end: Alignment.centerRight,
                //         stops: [0.5,1],
                //       )
                //     )
                //   ),
                // ),
              ],
            )),
        Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.teal),
              child: Center(
                  child: Text("Contact Festus",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
            )),
      ],
    ));
  }
}
