import 'package:flutter/material.dart';
import 'package:flutter_daily_ui_challenges/GiftShopAppUI/main_cart_page.dart';
import 'package:flutter_daily_ui_challenges/GiftShopAppUI/main_home_page.dart';

class GiftShopAppMainPage extends StatefulWidget {
  @override
  _GiftShopAppMainPageState createState() => _GiftShopAppMainPageState();
}

class _GiftShopAppMainPageState extends State<GiftShopAppMainPage> {
  int pageIndex = 0;
  

  final _page = [
    MainHomePage(),
    MainCartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: _page,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: (newValue) {
            setState(() {
              pageIndex = newValue;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive),
              title: Text("Archive"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              title: Text("Share"),
            ),
          ]),
    );
  }
}
