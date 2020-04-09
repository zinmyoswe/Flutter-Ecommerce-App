import 'package:flutter/material.dart';

class VovoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Icon(Icons.assignment),
          new Icon(Icons.assignment_ind),
          new Icon(Icons.assignment_late),
        ],
      ),
    );
  }
}
