import 'package:flutter/material.dart';
import 'package:tourism/models/destination.dart';

class Destinations with ChangeNotifier {
  List<Destination> _popularDestination = [
    Destination(
        id: "Kathmandu",
        imageURL:
            "https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/images/methode/2019/02/06/3a21faa6-2052-11e9-9b66-f8d7b487d426_image_hires_164133.jpg?itok=3EEBUQFT&v=1549442505",
        popular: "Heritage Sites"),
    Destination(
        id: "Pokhara",
        imageURL:
            "https://www.liberaldictionary.com/wp-content/uploads/2019/02/kathmandu-3968.jpg",
        popular: "Lakes and Paragliding"),
    Destination(
        id: "Lumbini",
        imageURL:
            "https://transporthubnepal.com/wp-content/uploads/2020/02/lumbini.jpg",
        popular: "Gautam Buddha Birth Place"),
    Destination(
        id: "Mustang",
        imageURL:
            "https://www.enepaltreks.com/wp-content/uploads/2018/04/umustang.jpg",
        popular: "Himalayas and Trekking"),
  ];
  List<Destination> get popularDestination {
    return [..._popularDestination];
  }

  List<Destination> _otherDestination = [
    Destination(
        id: "Kathmandu",
        imageURL:
        "https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/images/methode/2019/02/06/3a21faa6-2052-11e9-9b66-f8d7b487d426_image_hires_164133.jpg?itok=3EEBUQFT&v=1549442505",
        popular: "Heritage Sites"),
    Destination(
        id: "Pokhara",
        imageURL:
        "https://www.liberaldictionary.com/wp-content/uploads/2019/02/kathmandu-3968.jpg",
        popular: "Lakes and Paragliding"),
    Destination(
        id: "Lumbini",
        imageURL:
        "https://transporthubnepal.com/wp-content/uploads/2020/02/lumbini.jpg",
        popular: "Gautam Buddha Birth Place"),
    Destination(
        id: "Mustang",
        imageURL:
        "https://www.enepaltreks.com/wp-content/uploads/2018/04/umustang.jpg",
        popular: "Himalayas and Trekking"),
  ];
  List<Destination> get otherDestination {
    return [..._otherDestination];
  }
}
