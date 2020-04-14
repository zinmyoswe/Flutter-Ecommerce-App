import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
      {
        "name":"Uniqlo T-SHIRT 5",
        "picture": "images/products/un (1).png",
        "old_price": 18,
        "price": 14,
        "size": "M",
        "color": "Black",
        "quantity": "1",
      },
    {
      "name":"Uniqlo T-SHIRT 6",
      "picture": "images/products/un (6).png",
      "old_price": 18,
      "price": 14,
      "size": "M",
      "color": "White",
      "quantity": "1",
    },

    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index){
        return new Text("aa");
      }
    );
  }
}
