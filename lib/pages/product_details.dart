import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/main.dart';

class ProductDetails extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const ProductDetails({Key? key, this.product_detail_name, this.product_detail_new_price, this.product_detail_old_price, this.product_detail_picture}) : super(key: key);
 // ignore: non_constant_identifier_names
             final product_detail_name;
             final product_detail_new_price;
            final product_detail_old_price;
            final product_detail_picture;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.purple,
        title:InkWell(
            onTap: (){},
            child: Text('Chapai OnStop')),
        actions: <Widget>[
          IconButton(  icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
          IconButton(  icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){},),
        ],
      ),
      body: ListView(
        children:<Widget> [
          Container(
            height: 300.00,
            child: GridTile(
              child:Container(
                color: Colors.black,
                child: Image.asset(widget.product_detail_picture),
              ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(widget.product_detail_name,
                style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 20.0),),
                title: Row(
                  children:<Widget> [
                  Expanded(child: Text('${widget.product_detail_old_price}৳',
                  style: const TextStyle(color: Colors.brown,
                  decoration: TextDecoration.lineThrough),)),
                    Expanded(child: Text("${widget.product_detail_new_price}৳ now!!",
                    style: const TextStyle(color: Colors.red,
                    fontWeight: FontWeight.bold,
                    ),
                    ))
                    
                  ],
                ),
              ),
            ),

            //  ======The first Buttons=========


            ),
          ),

          //===The Size buttons===

          Row(children:<Widget> [

            Expanded(child:
            MaterialButton(
              onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: const Text('Size'),
                  content: const Text('Choose the size'),
                  actions: <Widget>[
                    MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                    child: const Text("Close",style: TextStyle(color: Colors.teal),),

                    ),
                  ],
                );
              });
            },
            color: Colors.white,
            textColor: Colors.grey,
              elevation: 0.2,
            child: Row(
              children:const <Widget> [
                Expanded(child: Text('Size'),
                ),
                Expanded(child: Icon(Icons.arrow_drop_down))
              ],
            ),)),

            //  =========The Color Button======================

            Expanded(child:
            MaterialButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: const Text('Color'),
                    content: const Text('Choose a Color'),
                    actions: <Widget>[
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                        child: const Text("Close",style: TextStyle(color: Colors.purple),),

                      ),
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children:const <Widget> [
                  Expanded(child: Text('Color', style: TextStyle(color: Colors.deepOrange),),
                  ),
                  Expanded(child: Icon(Icons.arrow_drop_down))
                ],
              ),)),

            //   ==========The Qty Button====================

            Expanded(child:
            MaterialButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: const Text('Quantity'),
                    content: const Text('Fill the Qty'),
                    actions: <Widget>[
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                        child: const Text("Close",style: TextStyle(color: Colors.teal),),

                      ),
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children:const <Widget> [
                  Expanded(child: Text('Qty',style: TextStyle(color:Colors.teal)),
                  ),
                  Expanded(child: Icon(Icons.arrow_drop_down))
                ],
              ),
            )
            ),
          ],
          ),

          //  ======The second button====
          Row(
            children:<Widget> [
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context,
                    builder:(context){
                  return AlertDialog(
                    title: const Text('Size'),
                    content: const Text('Choose the size'),
                    actions:<Widget> [
                      MaterialButton(onPressed: (){},
                      child: const Text('close'),
                      ),

                    ],
                  );
                    });

              },
              color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: const Text('Buy now!!',style: TextStyle(fontSize: 20.0),),
              ),
              ),
              IconButton(icon:const Icon(Icons.add_shopping_cart,color: Colors.red,),onPressed: (){},),
               IconButton(icon:const Icon(Icons.favorite_border_outlined,color: Colors.pink,),onPressed: (){},)
            ],
          ),

          // ========Divider=================

          const Divider(color: Colors.red,),
           const ListTile(
            title:Text('Product details'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
                'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
          ),
          const Divider(),

          Row(
            children: <Widget> [
              const Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
              child:  Text('Product name',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),),
              Padding(padding: const EdgeInsets.all(5.0),
              child:   Text(widget.product_detail_name),
              ),
            ],
          ),

          Row(
            children: const <Widget> [
             Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child:  Text('Product Brand',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),),
              Padding(padding:EdgeInsets.all(5.0),
              child: Text('brand x'),)
            ],
          ),

          Row(
            children:const <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child:  Text('Product Condition',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,),),
              ),
            ],
          ),
          Row(
            children:const <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child:  Text('Product name',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
              ),
            ],
          ),

          Row(
            children:const <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child:  Text('Product name',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('Similar Products:', style: TextStyle(fontWeight:FontWeight.bold),),
          ),


          Container(height: 340,
          child: Similar_products(),)

       ],
      ),
    );
  }
}
// ============Similar product section=========
class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      'name': 'Salwar',
      'picture': 'images/products/womandress.jpg',
      'old_price': 2800,
      "price": 2300,
    },
    {
      'name': 'Mens Shirt',
      'picture': 'images/products/menshirt3.jpg',
      'old_price': 800,
      "price": 500,
    },
    {
      'name': 'Saree',
      'picture': 'images/products/saree.jpeg',
      'old_price': 1800,
      "price": 1000,
    },
    {
      'name': 'Ladies Tee',
      'picture': 'images/products/womantshirt.jpg',
      'old_price': 450,
      "price": 200,
    },
    {
      'name': 'Mens Tee Shirt',
      'picture': 'images/products/mentshirt.jpg',
      'old_price': 450,
      "price": 200,
    },
    {
      'name': 'Blazer',
      'picture': 'images/products/blazers.jpg',
      'old_price': 450,
      "price": 200,
    },

//    ====copied items====

    {
      'name': 'Saree',
      'picture': 'images/products/saree2.jpg',
      'old_price': 4000,
      "price": 3200,
    },
    {
      'name': 'Saree',
      'picture': 'images/products/saree3.jpeg',
      'old_price': 4500,
      "price": 3300,
    },
    {
      'name': 'Saree',
      'picture': 'images/products/saree4.jpg',
      'old_price': 2500,
      "price": 1600,
    },
    {
      'name': 'Saree',
      'picture': 'images/products/saree5.jpg',
      'old_price': 450,
      "price": 200,
    },
    //======Salwar======
    {
      'name': 'Salwar',
      'picture': 'images/products/womandress2.jpg',
      'old_price': 2500,
      "price": 1800,
    },
    {
      'name': 'Salwar',
      'picture': 'images/products/womandress3.jpg',
      'old_price': 3300,
      "price": 2500,
    },
    {
      'name': 'Salwar',
      'picture': 'images/products/womandress5.jpg',
      'old_price': 3500,
      "price": 2500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        itemBuilder: (BuildContext context, int index) => Similar_single_prod(
            product_name: product_list[index]['name'],
            product_pic: product_list[index]['picture'],
            old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price']),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2));
  }
}
class Similar_single_prod extends StatelessWidget {
  final product_name;
  final product_pic;
  final old_price;
  final prod_price;

  const Similar_single_prod({
    required this.product_name,
    required this.product_pic,
    required this.old_price,
    required this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  ProductDetails(
                    //here we are passing values of product to the product details page
                    product_detail_name: product_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: old_price,
                    product_detail_picture: product_pic,

                  ))),
              child: GridTile(
                  child: Image.asset(
                    product_pic,
                    fit: BoxFit.cover,
                  ),
                  footer: Container(
                      color: Colors.white70,
                      child: Row(children: [
                        Expanded(child: Text(product_name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0 ),),),
                        Text('$prod_price৳,',style:const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, ) ,)

                      ],)
                  )),
            ),
          )),
    );
  }
}

