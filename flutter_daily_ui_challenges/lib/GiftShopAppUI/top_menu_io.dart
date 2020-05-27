import 'package:flutter/material.dart';

class TopBarItem extends StatelessWidget {
  final isSelected;

  TopBarItem({this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12,
      ),
      width: MediaQuery.of(context).size.width / 4.2,
      padding: isSelected ? EdgeInsets.all(4) : EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: isSelected ? Border.all(color: Colors.white, width: 2.5) : null,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 0, top: 4),
        decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.lighten))),
        child: Column(
          children: <Widget>[
            Text("For Family",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                )),
          ],
        ),
      ),
    );
  }
}
