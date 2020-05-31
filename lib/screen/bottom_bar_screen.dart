import 'package:flutter/material.dart';
import 'package:tourism/screen/Hotel_order_screen.dart';
import 'package:tourism/screen/cart_screen.dart';
import 'package:tourism/screen/favourite_screen.dart';
import 'package:tourism/screen/main_category_screen.dart';
import 'package:tourism/screen/profile_screen.dart';

enum FilterOptions { Cart, Bookings }

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, Object>> _pages = [];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {'page': MainCategoryScreen(), 'title': 'Destinations'},
      {'page': FavouriteScreen(), 'title': 'Favourite'},
      {'page': ProfileScreen(), 'title': 'Profile'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (FilterOptions filterOption) {
              if (filterOption == FilterOptions.Cart) {
                //Navigator.pushNamed(context, );
              } else {
                // Navigator.pushNamed(context, );
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HotelOrderScreen.routeName);
                  },
                  child: Text(
                    "Bookings",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                value: FilterOptions.Bookings,
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  },
                  child: Text(
                    "Cart",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                value: FilterOptions.Cart,
              ),
            ],
          ),
        ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favourite')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
    );
  }
}
