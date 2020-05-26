import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/destination.dart';
import 'package:tourism/screen/Hotel_Screen.dart';

class DestinationTileFormatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final destination = Provider.of<Destination>(context, listen: false);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, HotelScreen.routeName,
            arguments: destination.id);
      },
      child: ListTile(
        leading: Container(
            width: 100,
            height: 100,
            child: Image.network(
              destination.imageURL,
              fit: BoxFit.fill,
            )),
        title: Text(destination.id),
        subtitle: Text(destination.popular),
      ),
    );
  }
}
