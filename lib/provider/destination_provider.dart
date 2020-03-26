import 'package:flutter/material.dart';
import 'package:tourism/models/destination.dart';

class Destinations with ChangeNotifier {
  List<Destination> _popularDestination = [
    Destination(
        id: "1",
        placeName: "Kathmandu",
        affordable: Cost.Costly,
        imageURL:
            "https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/images/methode/2019/02/06/3a21faa6-2052-11e9-9b66-f8d7b487d426_image_hires_164133.jpg?itok=3EEBUQFT&v=1549442505",
        popular: "Heritage Sites"),
    Destination(
        id: "2",
        placeName: "Pokhara",
        affordable: Cost.Affordable,
        imageURL:
            "https://www.liberaldictionary.com/wp-content/uploads/2019/02/kathmandu-3968.jpg",
        popular: "Lakes and Paragliding"),
    Destination(
        id: "3",
        placeName: "Lumbini",
        affordable: Cost.Affordable,
        imageURL:
            "https://transporthubnepal.com/wp-content/uploads/2020/02/lumbini.jpg",
        popular: "Gautam Buddha Birth Place"),
    Destination(
        id: "4",
        placeName: "Mustang",
        affordable: Cost.Costly,
        imageURL:
            "https://www.enepaltreks.com/wp-content/uploads/2018/04/umustang.jpg",
        popular: "Himalayas and Trekking"),
  ];
  List<Destination> get popularDestination {
    return [..._popularDestination];
  }

  List<Destination> _otherDestination = [
    Destination(
        id: "1",
        placeName: "Kathmandu",
        affordable: Cost.Costly,
        imageURL:
            "https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/images/methode/2019/02/06/3a21faa6-2052-11e9-9b66-f8d7b487d426_image_hires_164133.jpg?itok=3EEBUQFT&v=1549442505",
        popular: "Heritage Sites"),
    Destination(
        id: "2",
        placeName: "Pokhara",
        affordable: Cost.Affordable,
        imageURL:
            "https://www.liberaldictionary.com/wp-content/uploads/2019/02/kathmandu-3968.jpg",
        popular: "Lakes and Paragliding"),
    Destination(
        id: "3",
        placeName: "Lumbini",
        affordable: Cost.Affordable,
        imageURL:
            "https://transporthubnepal.com/wp-content/uploads/2020/02/lumbini.jpg",
        popular: "Gautam Buddha Birth Place"),
    Destination(
        id: "4",
        placeName: "Lumbini",
        affordable: Cost.Costly,
        imageURL:
            "https://www.enepaltreks.com/wp-content/uploads/2018/04/umustang.jpg",
        popular: "Himalayas and Trekking"),
  ];
  List<Destination> get otherDestination {
    return [..._otherDestination];
  }
}
