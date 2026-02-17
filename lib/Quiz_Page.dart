import 'dart:math';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_madel.dart';
import 'package:quiz_app/selected_item_test.dart';

import 'Result_Page.dart';


class QuizPage extends StatefulWidget {
  List<QuizMadel> tests;
  String title;

  QuizPage({super.key, required this.tests, required this.title});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int expendedValeu = 1;
  int currentQuestionIndex = 0;
  int duration = 15;
  final CountDownController _countDownController = CountDownController();
  String selectedVariant = "";
  int trueAnswerCount = 0;
  List<bool> trueorfalse=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: CircularCountDownTimer(
              duration: duration,
              initialDuration: 0,
              controller: _countDownController,
              width: 45,
              height: 45,
              ringColor: Colors.grey[300]!,
              fillColor: Colors.green.shade700,
              strokeWidth: 4.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: true,
              onComplete: () {
                setState(() {
                  if (currentQuestionIndex < 9) {
                    expendedValeu++;
                    _countDownController.restart();
                    currentQuestionIndex++;
                    selectedVariant = "";
                    trueorfalse.add(false);
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ResultPage(
                            quizs: widget.tests,
                            trueAnswerCount: trueAnswerCount, trueorfalse: trueorfalse,
                          );
                        },
                      ),
                    );
                  }
                });
              },
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jaryon",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "$expendedValeu/10",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: expendedValeu,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Expanded(child: Container(), flex: 10 - expendedValeu),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    widget.tests[expendedValeu - 1].quizanswetr,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  SelectedItemTest(
                    variant: widget.tests[expendedValeu - 1].v1,
                    ontap: () {
                      setState(() {
                        selectedVariant = "A";
                      });
                    },
                    isSelected: selectedVariant == "A",
                  ),
                  SelectedItemTest(
                    variant: widget.tests[expendedValeu - 1].v2,
                    ontap: () {
                      setState(() {
                        selectedVariant = "B";
                      });
                    },
                    isSelected: selectedVariant == "B",
                  ),
                  SelectedItemTest(
                    variant: widget.tests[expendedValeu - 1].v3,
                    ontap: () {
                      setState(() {
                        selectedVariant = "C";
                      });
                    },
                    isSelected: selectedVariant == "C",
                  ),
                  SelectedItemTest(
                    variant: widget.tests[expendedValeu - 1].v4,
                    ontap: () {
                      setState(() {
                        selectedVariant = "D";
                      });
                    },
                    isSelected: selectedVariant == "D",
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (selectedVariant == "") return;
                  if (selectedVariant ==
                      widget.tests[expendedValeu - 1].trueAnswer) {
                    trueAnswerCount++;
                    trueorfalse.add(true);
                  }else{
                    trueorfalse.add(false);
                  }
                  if (currentQuestionIndex < 9) {
                    expendedValeu++;
                    selectedVariant = "";
                    _countDownController.restart();
                    currentQuestionIndex++;
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ResultPage(
                            quizs: widget.tests,
                            trueAnswerCount: trueAnswerCount, trueorfalse: trueorfalse,
                          );
                        },
                      ),
                    );
                  }
                });
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Keyingi▶️",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
