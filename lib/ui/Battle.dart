import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Battle extends StatefulWidget {
  @override
  _Battle createState() => _Battle();
}

class _Battle extends State<Battle> {
  var problems = [
    "My plans for studying abroad depend on (     ) I can get a scholarship.",
    "Noriko can speak Swahili and (     ) can Marco.",
    "Due to the rain, our performance in the game was (     ) from perfect.",
    "Emergency doors can be found at (     ) ends of this hallway.",
    "Jewson chose Jade Homes as their main (      ) of office equipment.",
  ];
  var answerSelectLists = [
    ["that", "what", "whether", "which"],
    ["also", "as", "so", "that"],
    ["apart", "different", "far", "free"],
    ["supply", "supplier", "supplement", "supplication"],
    ["both", "each", "either", "neither"],
  ];
  var answerLists = [
    "whether",
    "so",
    "far",
    "supplier",
    "both",
  ];
  int problem_num = 0; // 現在の問題の番号
  double enemy_HP = 100; // 仮定の値
  bool isAnswered = false; // 答えたかどうかの判定
  String button_text = "次へ";
  String correctString = "正解";
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
                            child: Text(problems[problem_num]),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          ElevatedButton(
                            child: Text(answerSelectLists[problem_num][0]),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  isAnswered = true;
                                  if (answerLists[problem_num] ==
                                      answerSelectLists[problem_num][0]) {
                                    enemy_HP = enemy_HP - 20;
                                    correctString = "正解";
                                  } else {
                                    correctString = "不正解";
                                  }
                                });
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: Text(answerSelectLists[problem_num][1]),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  isAnswered = true;
                                  if (answerLists[problem_num] ==
                                      answerSelectLists[problem_num][1]) {
                                    enemy_HP = enemy_HP - 20;
                                    correctString = "正解";
                                  } else {
                                    correctString = "不正解";
                                  }
                                });
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: Text(answerSelectLists[problem_num][2]),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  isAnswered = true;
                                  if (answerLists[problem_num] ==
                                      answerSelectLists[problem_num][2]) {
                                    enemy_HP = enemy_HP - 20;
                                    correctString = "正解";
                                  } else {
                                    correctString = "不正解";
                                  }
                                });
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: Text(answerSelectLists[problem_num][3]),
                            onPressed: () {
                              if (!isAnswered) {
                                setState(() {
                                  isAnswered = true;
                                  if (answerLists[problem_num] ==
                                      answerSelectLists[problem_num][3]) {
                                    enemy_HP = enemy_HP - 20;
                                    correctString = "正解";
                                  } else {
                                    correctString = "不正解";
                                  }
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
                    Text(correctString),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      child: Text(button_text),
                      onPressed: () {
                        setState(
                          () {
                            isAnswered = false;
                            if (enemy_HP <= 0) {
                              enemy_HP = 100;
                            }
                            if (problem_num == 4) {
                              Navigator.pushNamed(context, "/result");
                            } else {
                              problem_num++;
                              if (problem_num == 4) {
                                button_text = "終了";
                              }
                            }
                          },
                        );
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
