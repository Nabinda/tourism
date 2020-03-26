import 'package:flutter/cupertino.dart';

enum Cost { Cheap, Affordable, Costly }

class Destination with ChangeNotifier {
  final String id;
  final String placeName;
  final Cost affordable;
  final String imageURL;
  final String popular;
  bool isFavourite;
  Destination(
      {@required this.id,
      @required this.placeName,
      @required this.imageURL,
      @required this.affordable,
        @required this.popular,
      this.isFavourite = false});
}
