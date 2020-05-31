import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/hotels.dart';
import 'package:tourism/provider/cart_provider.dart';
import 'package:tourism/provider/hotel_provider.dart';
import 'package:tourism/widgets/hotel_slide_image.dart';

class HotelDetailScreen extends StatefulWidget {
  static const routeName = "/hotel_detail_screen";

  @override
  _HotelDetailScreenState createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments.toString();
    final hotel =
        Provider.of<HotelProvider>(context, listen: false).findByName(id);
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          hotel.name,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      floatingActionButton: SpeedDial(
        child: Icon(Icons.reorder),
        children: [
          SpeedDialChild(
            onTap: () {
              cart.addItem(
                  hotel.id, hotel.name, hotel.price, hotel.imageURL[0]);
            },
            child: Icon(Icons.bookmark_border),
            label: 'Book Now',
            labelBackgroundColor: Colors.black,
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
          ),
          SpeedDialChild(
            child: Consumer<Hotel>(
              builder: (ctx, builder, _) {
                return IconButton(
                  onPressed: () {
                    hotel.toggleIsFavourite();
                  },
                  icon: hotel.isFavourite
                      ? Icon(Icons.favorite, color: Colors.green)
                      : Icon(Icons.favorite),
                );
              },
            ),
            label: 'Add to Favourite',
            labelBackgroundColor: Colors.black,
            backgroundColor: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Photo Slider
            HotelSlideImage(id),
            //End of Photo Slider
            //Other Information
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: <Widget>[
                  Text(
                    "HOTEL INFORMATION",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Card(
                    elevation: 5,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        size: 20,
                        color: Colors.green,
                      ),
                      title: Text(
                        hotel.contactNo,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 20,
                        color: Colors.green,
                      ),
                      title: Text(
                        hotel.email,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.green,
                      ),
                      title: Text(
                        hotel.location,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: ListTile(
                      leading: Text(
                        "Rs.",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                      title: Text(
                        hotel.price.toString() + "\t per Day",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Facilities
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  Text(
                    "OUR FACILITIES",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
//                    decoration: BoxDecoration(
//                      color: Colors.black,
//                      border: Border.all(color: Colors.grey),
//                      borderRadius: BorderRadius.circular(10),
//                    ),
                    child: ListView.builder(
                        itemCount: hotel.facilities.length,
                        itemBuilder: (ctx, index) => Card(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Text(
                                  hotel.facilities[index],
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                            )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
