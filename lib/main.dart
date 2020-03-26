import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/provider/destination_provider.dart';
import 'package:tourism/screen/main_category_screen.dart';
import 'package:tourism/widgets/destination_with_image.dart';

import 'models/destination.dart';

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
        ChangeNotifierProvider.value(value: Destination()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tourism",
        theme: ThemeData.light(),
        home: MainCategoryScreen(),
      ),
    );
  }
}
