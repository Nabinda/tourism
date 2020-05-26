import 'package:flutter/material.dart';

enum Cost { Cheap, Affordable, Costly }

class Destination with ChangeNotifier {
  final String id;
  final String imageURL;
  final String popular;
  bool isFavourite;
  Destination(
      {@required this.id,
      @required this.imageURL,
      @required this.popular,
      this.isFavourite = false});
}
