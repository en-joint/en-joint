import 'package:en_joint/ui/Battle.dart';
import 'package:en_joint/ui/Home.dart';
import 'package:en_joint/ui/Result.dart';
import 'package:en_joint/ui/Room.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image Demo",
      theme: ThemeData(fontFamily: 'Krona'),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/room': (context) => Room(),
        '/battle': (context) => Battle(),
        '/result': (context) => Result(),
      },
    );
  }
}
