import 'package:e_commerce/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:e_commerce/pages/product_details.dart';
//my own imports.
import 'package:e_commerce/components/horizontal_listview.dart';
import 'package:e_commerce/components/products.dart';
import 'package:e_commerce/pages/cart.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
  Widget image_carousel =  Container(
  height: 150 ,
    child:  Carousel(
      boxFit: BoxFit.cover,
     images:  [

       Image.asset('images/m1.jpeg'),
       Image.asset('images/w1.jpeg'),
       Image.asset('images/w3.jpeg'),
       Image.asset('images/w4.jpeg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: const Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.red,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );


    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('Chapai OnStop'),
        actions: <Widget>[
           IconButton(  icon: const Icon(Icons.search, color: Colors.white,), onPressed: (){},),
           IconButton(  icon: const Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const Cart()));},),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget>[
            //header part of drawer
            UserAccountsDrawerHeader(
                accountName: const Text('Russo Ahmed'),
                accountEmail: const Text ('Merchant.russo@gmail.com'),
            currentAccountPicture: GestureDetector (
              child:  const CircleAvatar(
                backgroundColor: Colors.limeAccent,
                child: Icon(Icons.person, color: Colors.black,),
              ),

            ) ,
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
              ),
            ),
            //body

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('My Homepage'),
                leading: Icon(Icons.home,
                  color: Colors.red,
                  size: 25
                  ,
                ),

              ),
            ),

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,
                  color: Colors.purple,
                  size: 25,

                ),

              ),
            ),

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('My Orders',),
                leading: Icon(Icons.shopping_basket,
                color: Colors.purple,
                size: 25,),

              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cart()));
              },
              child:const ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart,
                color: Colors.deepOrangeAccent,
                size: 25,),



              ),
            ),

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Favorites',),
                leading: Icon(Icons.favorite,
                  color: Colors.pinkAccent,
                  size: 25,),
              ),
              ),
                const Divider(),
            InkWell(
              onTap: (){},
              child:const ListTile(
                title: Text('Settings',),
                leading: Icon(Icons.settings,
                  size: 25,),
              ),
            ),
            InkWell(
              onTap: (){},
              child:const ListTile(
                title: Text('About',),
                leading: Icon(Icons.help,
                 size: 25,),

              ),
            ),
          ],
        ),
      ),
      body:  ListView(
        children: <Widget>[
          image_carousel,
          //padding widgets

           const Padding(padding: EdgeInsets.all(4.0),
           child: Text('Categories'),),

        //  horizontal lists begins here
          const HorizontalList(),

           const Padding(padding: EdgeInsets.all(20.0),
            child: Text('Recent Products',),),

        //  grid view
          Container(
            height: 320.00,
            child: const Products(),
          ),
        ],
      ),
    );
  }
}

