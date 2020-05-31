import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/cart_provider.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageURL;
  final double price;

  final String hotelId;
  CartItem(
    this.id,
    this.name,
    this.imageURL,
    this.price,
    this.hotelId,
  );
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Dismissible(
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cart.removeItem(hotelId);
      },
      key: ValueKey(hotelId),
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Are you sure?"),
            content: Text("Do you want to remove this item from the cart ?"),
            actions: <Widget>[
              FlatButton(
                child: Text("NO"),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
              FlatButton(
                child: Text("YES"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          ),
        );
      },
      background: Container(
        color: Colors.red,
        child: Text(
          "Delete",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 4),
      ),
      child: ListTile(
          leading: Container(
            width: 100,
            height: 150,
            child: Image.network(
              imageURL,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(name),
          subtitle: Row(
            children: <Widget>[
              Text(
                "Rs.",
                style: TextStyle(color: Colors.green),
              ),
              SizedBox(
                width: 10,
              ),
              Text(price.toString()),
            ],
          )),
    );
  }
}
