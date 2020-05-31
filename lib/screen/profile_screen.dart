import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://live.staticflickr.com/8629/16610599761_98e548068e_b.jpg"),
              radius: 80.0,
            ),
            Text(
              "Nabin Dangol",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
                fontSize: 30,
              ),
            ),
            Text(
              "oɥʞʎsԀ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 2,
                color: Colors.grey,
                height: 15.0,
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.green,
                ),
                title: Text(
                  "+977-9803126622",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 20,
                  color: Colors.green,
                ),
                title: Text(
                  "nabindangol2@gmail.com",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
