import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Uniqlo T-SHIRT",
      "picture": "images/products/un (1).jpg",
      "old_price": 18,
      "price": 14,
    },
    {
      "name":"Uniqlo T-SHIRT",
      "picture": "images/products/un (1).png",
      "old_price": 18,
      "price": 14,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

