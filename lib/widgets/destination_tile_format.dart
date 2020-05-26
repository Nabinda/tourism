import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/destination_provider.dart';
import 'package:tourism/widgets/destination_tile_format_item.dart';

class DestinationTileFormat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final destinations = Provider.of<Destinations>(context);
    final otherDestination = destinations.otherDestination;
    return ListView.builder(
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
          value: otherDestination[index], child: DestinationTileFormatItem()),
      scrollDirection: Axis.vertical,
      itemCount: otherDestination.length,
    );
  }
}
