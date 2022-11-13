import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  @override
  _Room createState() => _Room();
}

class _Room extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              child: Container(
                child: Center(
                  child: Text("ルーム1"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/RoomButtonImage.png"),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                fixedSize: Size(200, 100),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/battle");
              },
            ),
            ElevatedButton(
              child: Container(
                child: Center(
                  child: Text("ルーム2"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/RoomButtonImage.png"),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                fixedSize: Size(200, 100),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/battle");
              },
            ),
            ElevatedButton(
              child: Container(
                child: Center(
                  child: Text("ルーム3"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/RoomButtonImage.png"),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                fixedSize: Size(200, 100),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/battle");
              },
            ),
            ElevatedButton(
              child: Container(
                child: Center(
                  child: Text("ルーム4"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/RoomButtonImage.png"),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                fixedSize: Size(200, 100),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/battle");
              },
            ),
            ElevatedButton(
              child: Container(
                child: Center(
                  child: Text("ルーム5"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/RoomButtonImage.png"),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                fixedSize: Size(200, 100),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/battle");
              },
            ),
          ],
        ),
      ),
    );
  }
}
