import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Battle extends StatefulWidget {
  @override
  _Battle createState() => _Battle();
}

class _Battle extends State<Battle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Button'),
          onPressed: () {},
        ),
      ),
    );
  }
}
