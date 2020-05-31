import 'package:flutter/material.dart';

enum Cost { Cheap, Affordable, Costly }

class Hotel with ChangeNotifier {
  final String id;
  final String city;
  final String name;
  final String location;
  final double price;
  final List<String> imageURL;
  final List<String> facilities;
  final String contactNo;
  final String email;
  bool isFavourite;
  Hotel(
      {@required this.id,
      @required this.city,
      @required this.name,
      @required this.location,
      @required this.imageURL,
      @required this.price,
      @required this.facilities,
      @required this.contactNo,
      @required this.email,
      this.isFavourite = false});
  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
