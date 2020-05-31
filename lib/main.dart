import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/hotels.dart';
import 'package:tourism/provider/cart_provider.dart';
import 'package:tourism/provider/destination_provider.dart';
import 'package:tourism/provider/hotel_booking_provider.dart';
import 'package:tourism/provider/hotel_provider.dart';
import 'package:tourism/screen/Hotel_Screen.dart';
import 'package:tourism/screen/Hotel_order_screen.dart';
import 'package:tourism/screen/bottom_bar_screen.dart';
import 'package:tourism/screen/cart_screen.dart';
import 'package:tourism/screen/destination_detail_screen.dart';
import 'package:tourism/screen/favourite_screen.dart';
import 'package:tourism/screen/hotel_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Destinations()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: HotelProvider()),
        ChangeNotifierProvider.value(value: Hotel()),
        ChangeNotifierProvider.value(value: Orders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tourism",
        theme: ThemeData(
            primaryColor: Colors.black,
            accentColor: Colors.green,
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
            bottomAppBarColor: Colors.green,
            iconTheme: IconThemeData(
              color: Colors.blue,
              size: 20,
            )),
        home: BottomBarScreen(),
        routes: {
          HotelScreen.routeName: (ctx) => HotelScreen(),
          HotelDetailScreen.routeName: (ctx) => HotelDetailScreen(),
          FavouriteScreen.routeName: (ctx) => FavouriteScreen(),
          HotelOrderScreen.routeName: (ctx) => HotelOrderScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          DestinationDetailScreen.routeName: (ctx) => DestinationDetailScreen(),
        },
      ),
    );
  }
}
