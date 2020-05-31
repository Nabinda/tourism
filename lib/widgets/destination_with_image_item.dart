import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/destination.dart';
import 'package:tourism/screen/Hotel_Screen.dart';
import 'package:tourism/screen/destination_detail_screen.dart';

class DestinationWithImageItem extends StatelessWidget {
//  final String id;
//  DestinationWithImageItem(this.id);
  void selectedDestination(BuildContext ctx) {
    Navigator.pushNamed(ctx, HotelScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final selectedDestination =
        Provider.of<Destination>(context, listen: false);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DestinationDetailScreen.routeName,
            arguments: selectedDestination.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: GridTile(
            child: Stack(
              //^^^Stack for the desired overlapping layout--//
              children: <Widget>[
                Container(
                  height: 300,
                  width: 140,
                  child: Image.network(
                    selectedDestination
                        .imageURL, //<<--Place for images to be placed from the provider//but actually from data model
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  //^^^This widget is used here to control the position of the clidren widget of stack--//

                  left: 10, //positioning value
                  bottom: 10, //positioning value
                  child: Row(
                    //^^^This Row is positioned bottom left corner of the parent stack--//
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            selectedDestination
                                .id, //<<---data through provider--<<
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
