import 'package:flutter/material.dart';

class ShopByCollection extends StatefulWidget {
  @override
  _ShopByCollectionState createState() => _ShopByCollectionState();
}

class _ShopByCollectionState extends State<ShopByCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('ActiveShop'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
    );
  }
}
