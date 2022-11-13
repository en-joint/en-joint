import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  @override
  _Result createState() => _Result();
}

class _Result extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme:
              GoogleFonts.reggaeOneTextTheme(Theme.of(context).textTheme),
        ),
        home: Scaffold(
          backgroundColor: Colors.brown[500],
          appBar: AppBar(
            title: Text("リザルト"),
            centerTitle: true,
            backgroundColor: Colors.brown[400],
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("おめでとう！\n1/20問正解！\nAランク 0体\nBランク 0体\nCランク 1体\n倒しました★",
                      style: TextStyle(fontSize: 36)),
                  ElevatedButton(
                    child: const Text('問題の解説'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[800],
                      fixedSize: Size(200, 100),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                  ElevatedButton(
                    child: const Text('トップへ'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(200, 100),
                        onPrimary: Colors.black),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                ]),
          ),
        ));
  }
}
