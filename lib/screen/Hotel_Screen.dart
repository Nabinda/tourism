import 'package:flutter/material.dart';
import 'package:tourism/widgets/hotels_tile.dart';

class HotelScreen extends StatefulWidget {
  static const routeName = "/hotel_screen";
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotel"),
        centerTitle: true,
      ),
      body: HotelsTile(id),
    );
  }
}
