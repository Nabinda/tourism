import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/models/hotels.dart';
import 'package:tourism/provider/hotel_provider.dart';
import 'package:tourism/widgets/favourite_hotel.dart';

class FavouriteScreen extends StatelessWidget {
  static const routeName = "/favourite_screen";
  @override
  Widget build(BuildContext context) {
    final favouriteHotel = Provider.of<HotelProvider>(context).favourites;
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) => FavouriteHotel(
          id: favouriteHotel[index].id,
          name: favouriteHotel[index].name,
          contact: favouriteHotel[index].contactNo,
          imageURL: favouriteHotel[index].imageURL,
        ),
        itemCount: favouriteHotel.length,
      ),
    );
  }
}
