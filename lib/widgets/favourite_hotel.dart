import 'package:flutter/material.dart';
import 'package:tourism/screen/hotel_detail_screen.dart';

class FavouriteHotel extends StatelessWidget {
  final String id;
  final String name;
  final String contact;
  final List<String> imageURL;
  FavouriteHotel(
      {@required this.id,
      @required this.name,
      @required this.contact,
      @required this.imageURL});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HotelDetailScreen.routeName,
            arguments: id);
      },
      child: ListTile(
          leading: Container(
            width: 100,
            height: 100,
            child: Image.network(
              imageURL[0],
              fit: BoxFit.fill,
            ),
          ),
          title: Text(name),
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
              Text(contact),
            ],
          )),
    );
  }
}
