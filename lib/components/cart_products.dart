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
      "size": "S",
      "color": "White",
      "quantity": "1",
    },

    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
          cart_prod_old_price: Products_on_the_cart[index]["old_price"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
        );
      }
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_old_price;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_old_price,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
 });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 80,
        height: 80,),
        title: new Text(cart_prod_name,style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),),
        subtitle: new Column(
          children: <Widget>[
//            ====Product price section start====
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
//            ====Product price and Size start====
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Text(cart_prod_size),
                ),

                new Padding(padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Text(cart_prod_color),
                ),

              ],
            ),
          ],
        ),
        trailing: new Column(

          children: <Widget>[

            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text(cart_prod_qty),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),

          ],
        ),
      ),

    );
  }
}

