import 'package:flutter/material.dart';
import 'Room.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme:
              GoogleFonts.reggaeOneTextTheme(Theme.of(context).textTheme),
        ),
        home: Scaffold(
          backgroundColor: Colors.brown[700],
          appBar: AppBar(
            title: Text("ミッション"),
            centerTitle: true,
            backgroundColor: Colors.brown[400],
          ),
          body: Center(
            child: Column(children: [
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/english.png"))),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: Size(200, 100),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/room");
                },
              ),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/math.png"))),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  fixedSize: Size(200, 100),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/room");
                },
              ),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/japanese.png"))),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: Size(200, 100),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/room");
                },
              ),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/social.png"))),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[400],
                  fixedSize: Size(200, 100),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/room");
                },
              ),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/science.png"))),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  fixedSize: Size(200, 100),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/room");
                },
              ),
            ]),
          ),
        ));
  }
}
