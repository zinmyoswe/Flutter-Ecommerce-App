import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/ca1.png',
            image_caption: 'shoes',
          ),
          Category(
            image_location: 'images/cats/ca2.png',
            image_caption: 'shoes',
          ),
          Category(
            image_location: 'images/cats/ca3.png',
            image_caption: 'shoes',
          ),
          Category(
            image_location: 'images/cats/ca4.png',
            image_caption: 'shoes',
          ),
          Category(
            image_location: 'images/cats/ca5.png',
            image_caption: 'shoes',
          ),
          Category(
            image_location: 'images/cats/ca6.png',
            image_caption: 'shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(0.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 150.0,

      child: ListTile(
        title: Image.asset(
            image_location,
            width: 150.0,
            height: 150.0,
        ),
        subtitle: Text(image_caption),
        ),
      ),
    ),
    );
  }
}

