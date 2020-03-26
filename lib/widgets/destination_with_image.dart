import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/destination_provider.dart';
import 'package:tourism/widgets/destination_with_image_item.dart';

class DestinationWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final destination = Provider.of<Destinations>(context);
    final popularDestination = destination.popularDestination;
    return Container(
      child: ListView.builder(
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
            value: popularDestination[index],
            child: DestinationWithImageItem()),
        scrollDirection: Axis.horizontal,
        itemCount: popularDestination.length,
      ),
    );
  }
}
