import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/destination.dart';
import 'package:tourism/screen/Hotel_Screen.dart';
import 'package:tourism/screen/destination_detail_screen.dart';

class DestinationTileFormatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final destination = Provider.of<Destination>(context, listen: false);
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, DestinationDetailScreen.routeName,
                arguments: destination.id);
          },
          splashColor: Colors.lightGreenAccent,
          child: ListTile(
            leading: Container(
                width: 100,
                height: 150,
                child: Image.network(
                  destination.imageURL,
                  fit: BoxFit.fill,
                )),
            title: Text(destination.id),
            subtitle: Text(destination.popular),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Divider(
            thickness: 2,
            color: Colors.grey.withOpacity(0.9),
          ),
        )
      ],
    );
  }
}
