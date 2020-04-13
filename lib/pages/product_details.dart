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
//      =============== Size button =============================
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        )
                      ],
                    );
                  });
                },
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

            //      =============== Color button =============================
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choose the color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors. grey,
                elevation: 0.2,
                child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Color")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ]
                ),
              ),
            ),

            //      =============== Qty button =============================
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Qty"),
                          content: new Text("Choose the qty"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors. grey,
                elevation: 0.2,
                child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Qty")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ]
                ),


              ),
            ),
          ],
        ),

      //      =============== 2nd button =============================
      Row(
        children: <Widget>[

          Expanded(
            child: MaterialButton(
              onPressed: (){},
              color: Colors.blue[500],
              textColor: Colors. white,
              elevation: 0.2,
              child: new Text("Buy now")
            ),
          ),

          new IconButton(icon: Icon(Icons.add_shopping_cart),onPressed: (){}),
          new IconButton(icon: Icon(Icons.favorite_border),onPressed: (){}),
          ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
                ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Uniqlo"),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
