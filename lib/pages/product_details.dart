import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_old_price,
    this.product_detail_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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

      body: new ListView(
        children: <Widget>[
           new Container(
             height: 300.0,
             child: GridTile(
               child: Container(
                 color: Colors.white,
                 child: Image.asset(widget.product_detail_picture),
               ),
               footer: new Container(
                 color: Colors.white70,
                 child: ListTile(
                   leading:new Text(widget.product_detail_name,
                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                   ),
                   title: new Row(
                     children: <Widget>[
                       Expanded(
                         child: new Text("\$${widget.product_detail_old_price}",
                         style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),),
                       ),
                       Expanded(
                         child: new Text("\$${widget.product_detail_price}",
                           style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                       ),
                     ],
                   ),
                 ),
               ) ,
             ),
           ),

//      =============== first button =============================
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(onPressed: (){},
              color: Colors.white,
              textColor: Colors. grey,
                elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("Size")
                  ),
                  Expanded(
                    child: new Icon(Icons.arrow_drop_down)
                  ),
                ]
              ),
              ),
            ),
          ],
        )
        ],
      ),
    );
  }
}
