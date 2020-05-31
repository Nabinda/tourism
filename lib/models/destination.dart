import 'package:flutter/material.dart';

enum Cost { Cheap, Affordable, Costly }

class Destination with ChangeNotifier {
  final String id;
  final String imageURL;
  final String popular;
  final String description;
  bool isFavourite;
  Destination(
      {@required this.id,
      @required this.imageURL,
      @required this.popular,
      @required this.description,
      this.isFavourite = false});
}
