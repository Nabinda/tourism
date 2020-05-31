import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/hotel_booking_provider.dart' show Orders;
import 'package:tourism/widgets/order_item.dart';

class HotelOrderScreen extends StatelessWidget {
  static const routeName = "/hotel_order_screen";
  @override
  Widget build(BuildContext context) {
    final order = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Your Bookings"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) => OrderItem(order.orders[index]),
          itemCount: order.orders.length),
    );
  }
}
