import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/hotel_provider.dart';

class HotelSlideImage extends StatefulWidget {
  final id;
  HotelSlideImage(this.id);
  @override
  _HotelSlideImageState createState() => _HotelSlideImageState(id);
}

class _HotelSlideImageState extends State<HotelSlideImage> {
  final id;
  _HotelSlideImageState(this.id);
  List<NetworkImage> imageURL = <NetworkImage>[];

  @override
  Widget build(BuildContext context) {
    final link = Provider.of<HotelProvider>(context).getImageURL(id);
    for (int i = 0; i < link.length; i++) {
      imageURL.add(NetworkImage(link[i]));
    }
    print(imageURL);
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      child: Carousel(
        images: imageURL,
        animationDuration: Duration(seconds: 2),
        dotSize: 5.0,
        dotSpacing: 20.0,
        dotColor: Colors.black,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.grey.withOpacity(0.5),
        borderRadius: true,
      ),
    );
  }
}
