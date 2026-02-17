import 'package:flutter/material.dart';
import 'package:quiz_app/payton_quiz_repository.dart';
import 'package:quiz_app/quiz_madel.dart';

import 'Quiz_info_page.dart';
import 'history_quiz_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String about_history = HistoryQuizRepository.about;
  String lesson_history = HistoryQuizRepository.lesson;
  List<QuizMadel> tests = HistoryQuizRepository.historyquiztest();
  List<QuizMadel> payton_tests = PaytonQuizRepository.paytonquiztest();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Xush Kelibsiz",
              style: TextStyle(
                color: Colors.green,
                fontSize: 17,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Salom, foydalanuvchi 👋",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.all(4),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 40, color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          itemTestContainer(
            "assets/img_3.png",
            "Oson",
            "Tarix",
            tests.length,
            about_history,
            lesson_history,
            tests,
          ),
          itemTestContainer(
            "assets/img_4.png",
            "Qiyin",
            "Python asoslari",
            payton_tests.length,
            "",
            "",
            payton_tests,
          ),
          itemTestContainer(
            "assets/img_5.png",
            "O'rtacha",
            "Bialogiya hujaayra",
            20,
            "",
            "",
            [],
          ),
        ],
      ),
    );
  }

  Widget itemTestContainer(
    String image,
    String level,
    String title,
    int counttest,
    String about,
    String lesson,
    List<QuizMadel> tests,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.all(12),

      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex:6,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        level,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),


                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.help, color: Colors.green.shade900),
                          Text(
                            "${counttest.toString()} savol",
                            style: TextStyle(
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Icon(Icons.watch_later, color: Colors.green.shade900),
                          Text(
                            "${counttest.toString()} savol",
                            style: TextStyle(
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 8,)
                        ],
                      ),
                      SizedBox(height: 6),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return QuizInfoPage(
                                  image: image,
                                  title: title,
                                  about: about,
                                  lesson: lesson,
                                  quizs: tests,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Boslash ➡️",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
