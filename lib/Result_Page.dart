import 'package:flutter/material.dart';
import 'package:quiz_app/Home_Page.dart';
import 'package:quiz_app/Quiz_Page.dart';
import 'package:quiz_app/quiz_madel.dart';

class ResultPage extends StatefulWidget {
  List<QuizMadel> quizs;
  int trueAnswerCount;
  List<bool> trueorfalse;

  ResultPage({
    super.key,
    required this.quizs,
    required this.trueAnswerCount,
    required this.trueorfalse,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double foiz = 0;
  String image = "";
  String title = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    foiz = (widget.trueAnswerCount / widget.quizs.length) * 100;
    if (foiz >= 90) {
      image = "";
      title =
          "A'lo natija! Siz mavzuni mukammal o'zlashtirsangiz. Bundan zo'r buladi";
    } else if (foiz >= 70 && foiz < 90) {
      image = "";
      title =
          "Yaxshi natija! ozgina e'tibor va mashq bilan yuqori darajaga chiqasiz";
    } else {
      image = "";
      title =
          "Harakat yaxshi, lekin yana mashq qilish tavsiya etiladi. Siz albatta uddalaysiz";
    }
    print(widget.trueorfalse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(70),
                          bottomLeft: Radius.circular(70),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/img_3.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.32,
                      child: Center(
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                        ),
                      ),
                    ),
                    SizedBox(height: 190),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 160,
                      child: Row(
                        children: [
                          Expanded(
                            child: itemresult(
                              "assets/resultrasm.png",
                              "${widget.trueAnswerCount}",
                              "To'g'ri",
                            ),
                          ),
                          Expanded(
                            child: itemresult(
                              "assets/result_x.png",
                              "${widget.quizs.length - widget.trueAnswerCount}",
                              "Xato",
                            ),
                          ),
                          Expanded(
                            child: itemresult(
                              "assets/voqt.png",
                              "01:20",
                              "Vaqt",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 66,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: InkWell(
                          child: Text(
                            "↻ Qayta urinib ko'rish",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return QuizPage(
                                    tests: widget.quizs,  // 🔥 BO‘SH EMAS
                                    title: title,
                                  );

                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 66,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Bosh Sahifa",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 270, left: 30, right: 30),
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Natija",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "${foiz.toStringAsFixed(0)}%",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemresult(String image, String count, String title) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 70, width: 70, fit: BoxFit.cover),
          SizedBox(height: 6),
          Text(
            "$count",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
