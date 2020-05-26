import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/hotel_provider.dart';
import 'package:tourism/widgets/hotel_tile_item.dart';

class HotelsTile extends StatelessWidget {
  final id;
  HotelsTile(this.id);
  @override
  Widget build(BuildContext context) {
    final hotels = Provider.of<HotelProvider>(context).findByLocation(id);
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
            value: hotels[index], child: HotelTileItem()),
        itemCount: hotels.length,
      ),
    );
  }
}
