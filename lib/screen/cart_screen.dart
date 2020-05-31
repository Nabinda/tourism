import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/cart_provider.dart' show Cart;
import 'package:tourism/provider/hotel_booking_provider.dart';
import 'package:tourism/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/cart_screen";
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final order = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height) *
                0.2,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Total :",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  //   color: Colors.teal,
                  width: 150,
                  child: Text(
                    "NPR ${cart.totalAmount} /-",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  onPressed: () {
                    order.addOrder(
                        cart.items.values.toList(), cart.totalAmount);
                    cart.clearCart();
                  },
                  child: Text('Book Now'),
                ),
              ],
            ),
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height) *
                0.6,
            child: ListView.builder(
                itemBuilder: (ctx, index) => CartItem(
                    cart.items.values.toList()[index].id,
                    cart.items.values.toList()[index].name,
                    cart.items.values.toList()[index].image,
                    cart.items.values.toList()[index].price,
                    cart.items.keys.toList()[index]),
                itemCount: cart.itemCount),
          ),
        ],
      ),
    );
  }
}
