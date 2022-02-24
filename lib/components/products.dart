import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_prod(
              product_name: product_list[index]['name'],
              product_pic: product_list[index]['picture'],
              old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price']),
        ),
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2));
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_pic;
  final old_price;
  final prod_price;

  const Single_prod({
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
