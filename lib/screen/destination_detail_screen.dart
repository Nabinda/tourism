import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/destination_provider.dart';
import 'package:tourism/screen/Hotel_Screen.dart';

class DestinationDetailScreen extends StatelessWidget {
  static const routeName = "destination_detail_screen";
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final destination =
        Provider.of<Destinations>(context).findPopularDestinationById(id);
    return Scaffold(
        appBar: AppBar(
          title: Text(destination.id),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(
                    destination.imageURL,
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height * 0.47) -
                        AppBar().preferredSize.height,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      color: Colors.black54,
                      width: 225,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text(
                        destination.popular,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: (MediaQuery.of(context).size.height * 0.5) -
                    AppBar().preferredSize.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: SingleChildScrollView(
                  child: Text(
                    destination.description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
//=============Bottom Screen Button
              Positioned(
                child: Container(
                  height: (MediaQuery.of(context).size.height * 0.15) -
                      AppBar().preferredSize.height,
                  color: Colors.greenAccent,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: FlatButton(
                    splashColor: Colors.redAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, HotelScreen.routeName,
                          arguments: id);
                    },
                    child: Text("Hotels Nearby"),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
