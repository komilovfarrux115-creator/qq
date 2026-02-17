
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'Intro_Page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 2),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
       return IntroPage();
     }));
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: [
              Colors.green.shade100,
              Colors.green.shade50,
              Colors.white70,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/img_1.png",height: 200,width: 200,fit: BoxFit.cover,),
                  Center(
                    child: Text(
                      "QuizPro",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 160, child: Lottie.asset("assets/loading.json"),),
          ],
        ),
      ),
    );
  }
}
