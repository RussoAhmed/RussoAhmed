
import 'package:e_commerce/pages/cart.dart';
import 'package:flutter/material.dart';
import 'dart:io';


class Cart_products extends StatefulWidget {

   Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart=[
    {
      'name': 'Salwar',
      'picture': 'images/products/womandress.jpg',
       "price": 2300,
       "size":'M',
      'color':'Green',
      'Quantity':1,
    },
    {
      'name': 'Saree',
      'picture': 'images/products/saree.jpeg',
      "price": 1000,
      "size":'one size',
      'color':'red',
      'Quantity':1,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            Cart_product_name: Products_on_the_cart[index]['name'],
            Cart_product_color:Products_on_the_cart[index]['color'],
            Cart_prod_Quantity: Products_on_the_cart[index]['Quantity'],
            Cart_product_size: Products_on_the_cart[index]['size'],
            Cart_prod_price: Products_on_the_cart[index]['price'],
            Cart_product_pic: Products_on_the_cart[index]['picture'],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final Cart_product_name;
  final Cart_product_pic;
  final Cart_prod_price;
  final Cart_product_size;
  final Cart_product_color;
  final Cart_prod_Quantity;


   Single_cart_product({Key? key,
    this.Cart_product_name,
    this.Cart_product_pic,
    this.Cart_prod_price,
     this.Cart_product_size,
     this.Cart_product_color,
     this.Cart_prod_Quantity});


   @override
  Widget build(BuildContext context) {
     return Card(

       //=========Cart Name====

       child: ListTile(
         leading: Image.asset(Cart_product_pic,height: 80.0,width: 80.0,),
         title: Text(Cart_product_name),
       subtitle: Column(
         children:<Widget> [
           Row(children: <Widget> [

             //=====Cart Size======

              const Padding(
             padding: EdgeInsets.all(0.0),
               child: Text('Size:'),
           ),
             Padding(
               padding:const EdgeInsets.all(4.0),
               child:Text (Cart_product_size, style: const TextStyle(color: Colors.red),),
             ),

              //======Cart Color====

              const Padding(padding:EdgeInsets.all(0.0),
                child: Text('color:'),),
             Padding(
               padding:const EdgeInsets.all(6.0),
               child:Text (Cart_product_color,style: const TextStyle(color: Colors.red),),
             ),
           ],
           ),
         //  ========Cart Price========
            Container(
              alignment: Alignment.topLeft,
              child: Text('${Cart_prod_price} ৳',style: const TextStyle(color: Colors.red,fontSize: 15),),
            ),
         ],
       ),
           trailing:
           FittedBox(
             fit: BoxFit.fill,
             child:
             Column(
               children: <Widget>[
                 IconButton(icon: const Icon(Icons.arrow_drop_up,color: Colors.red),iconSize: 38, onPressed: () {}),
                 Text('$Cart_prod_Quantity',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                 IconButton(icon: const Icon(Icons.arrow_drop_down,color: Colors.red,),iconSize: 38, onPressed: () {}),
               ],
             ),
           )
       ),
     );

   }
}

