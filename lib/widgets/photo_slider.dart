import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class PhotoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      child: Carousel(
          images: [
            NetworkImage(
                "https://lp-cms-production.imgix.net/features/2013/04/GettyImages-450207051_cs.jpg?auto=format&fit=crop&q=40&sharp=10&vib=20&ixlib=react-8.6.4"),
            NetworkImage(
                "https://www.nepalhikingteam.com/wp-content/uploads/2017/07/PHOSUNDO.jpg"),
            NetworkImage(
                "https://www.kailashjourneys.com/wp-content/uploads/2017/03/pashupatinath_temple_nepal.jpg"),
            NetworkImage(
                "https://www.beautifulworld.com/wp-content/uploads/2018/05/Kathmandu-Nepal.jpg"),
            NetworkImage(
                "https://www.holidify.com/images/cmsuploads/compressed/raralake_20180710001141.jpg"),
          ],
          animationDuration: Duration(seconds: 2),
          dotSize: 5.0,
          dotSpacing: 20.0,
          dotColor: Colors.black,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.grey.withOpacity(0.5),
          borderRadius: true),
    );
  }
}
