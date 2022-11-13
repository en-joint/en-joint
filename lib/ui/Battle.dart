import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Battle extends StatefulWidget {
  @override
  _Battle createState() => _Battle();
}

class _Battle extends State<Battle> {
  double enemy_HP = 100; // 仮定の値
  bool isAnswered = false; // 答えたかどうかの判定
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Center(
          child: ElevatedButton(
            child: const Text('終わりますか?'),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            child: Center(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          // Image.asset(""),
                          Container(
                            width: 400,
                            child: SliderTheme(
                              data: SliderThemeData(
                                thumbShape: SliderComponentShape.noThumb,
                              ),
                              child: Slider(
                                min: 0,
                                max: 100,
                                value: enemy_HP,
                                onChanged: (newValue) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Text("問題文"),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          ElevatedButton(
                            child: const Text('解答1'),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  enemy_HP = 20;
                                  isAnswered = true;
                                });
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: const Text('解答2'),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  enemy_HP = 40;
                                  isAnswered = true;
                                });
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: const Text('解答3'),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  enemy_HP = 40;
                                  isAnswered = true;
                                });
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: const Text('解答4'),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  enemy_HP = 10;
                                  isAnswered = true;
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: isAnswered,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              width: 200,
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("正解"),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      child: const Text('次へ'),
                      onPressed: () {
                        setState(() {
                          isAnswered = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
