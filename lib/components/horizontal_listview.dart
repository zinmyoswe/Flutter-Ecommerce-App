import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            new Icon(Icons.access_alarms),
            new Icon(Icons.access_alarms),
            new Icon(Icons.access_alarms),
        ],
      ),
    );
  }
}
