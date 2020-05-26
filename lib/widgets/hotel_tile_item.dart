import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/hotels.dart';
import 'package:tourism/screen/hotel_detail_screen.dart';

class HotelTileItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hotel = Provider.of<Hotel>(context, listen: false);
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, HotelDetailScreen.routeName,
            arguments: hotel.id);
      },
      child: ListTile(
          leading: Container(
            width: 100,
            height: 100,
            child: Image.network(
              hotel.imageURL[0],
              fit: BoxFit.fill,
            ),
          ),
          title: Text(hotel.name),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.call,
                size: 15,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(hotel.contactNo),
            ],
          )),
    );
  }
}
