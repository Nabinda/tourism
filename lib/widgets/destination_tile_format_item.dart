import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/destination.dart';

class DestinationTileFormatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final destination = Provider.of<Destination>(context, listen: false);
    return ListTile(
      leading: Container(
          width: 100,
          height: 100,
          child: Image.network(
            destination.imageURL,
            fit: BoxFit.fill,
          )),
      title: Text(destination.placeName),
      subtitle: Text(destination.popular),
    );
  }
}
