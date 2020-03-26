import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/widgets/destination_tile_format.dart';
import 'package:tourism/widgets/destination_with_image.dart';
import 'package:tourism/widgets/destination_with_image_item.dart';
import 'package:tourism/widgets/photo_slider.dart';

class MainCategoryScreen extends StatefulWidget {
  @override
  _MainCategoryScreenState createState() => _MainCategoryScreenState();
}

class _MainCategoryScreenState extends State<MainCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tourism",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white.withOpacity(0.5),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //=============PHOTO SLIDER OF PLACES=========
            Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: PhotoSlider()),
            SizedBox(
              height: 10,
            ),
            //--------Popular Destinations in Image Form-----------------
            Container(
              width: double.infinity,
              child: Text(
                "POPULAR DESTINATIONS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.1),
              thickness: 2,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                child: DestinationWithImage()),
            Divider(
              color: Colors.black.withOpacity(0.1),
              thickness: 2,
            ),
            //--------End of Popular Destinations in Image Form-----------------
            //--------Other Destinations in tile Form-----------------
            Container(
              width: double.infinity,
              child: Text(
                "OTHER DESTINATIONS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.1),
              thickness: 2,
            ),
            Container(
                height: 400,
                width: double.infinity,
                child: DestinationTileFormat()),
            //--------Other Destinations in tile Form-----------------
          ],
        ),
      ),
    );
  }
}
