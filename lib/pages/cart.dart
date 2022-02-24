import 'package:flutter/material.dart';

//my imports======
import 'package:e_commerce/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}
class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('Cart '),
        actions: <Widget>[
          IconButton(  icon: const Icon(Icons.search, color: Colors.white,), onPressed: (){},),
        ],
      ),
    body: Cart_products(),

    //  ========Bottom Navigation bar==========


      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget> [
            const Expanded(child: ListTile(
              title: Text('Total:'),
              subtitle: Text('\230 ৳'),
            )),
            
            Expanded
              (child: MaterialButton(onPressed:(){},
              child: const Text('Check out',style: TextStyle(color: Colors.white),),
              color: Colors.red,
            )),
          ],
        ),
      ),

    );
  }
}
