import 'package:quiz_app/quiz_madel.dart';

class BiologyQuizRepository {
  static String about =
      "Ushbu test orqali siz biologiya fanidan asosiy tushunchalar, hujayra tuzilishi va tirik organizmlar haqidagi bilimlaringizni sinab ko'rasiz.";
  static String lesson = "Biologiya: Asosiy tushunchalar";

  static List<QuizMadel> biologyquiztest() {
    List<QuizMadel> biology = [];

    biology.add(
      QuizMadel(
        quizanswetr: "Hujayraning asosiy strukturaviy birligi nima?",
        v1: "A.to‘qima",
        v2: "B.organ",
        v3: "C.hujayra",
        v4: "D.organizm",
        trueAnswer: "C",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Fotosintez jarayoni qayerda sodir bo‘ladi?",
        v1: "A.yadroda",
        v2: "B.xloroplastda",
        v3: "C.mitoxondriyada",
        v4: "D.ribosomada",
        trueAnswer: "B",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Odam organizmida nechta xromosoma mavjud?",
        v1: "A.23 ta",
        v2: "B.46 ta",
        v3: "C.44 ta",
        v4: "D.48 ta",
        trueAnswer: "B",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "DNK nimaning qisqartmasi?",
        v1: "A.dezoksiribonuklein kislota",
        v2: "B.ribonuklein kislota",
        v3: "C.nuklein oqsil",
        v4: "D.genetik ferment",
        trueAnswer: "A",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Qonning qizil hujayralari nima deb ataladi?",
        v1: "A.trombotsitlar",
        v2: "B.leykotsitlar",
        v3: "C.eritrotsitlar",
        v4: "D.plazma",
        trueAnswer: "C",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "O‘simliklarda suv va mineral moddalar qaysi qism orqali yuqoriga ko‘tariladi?",
        v1: "A.floema",
        v2: "B.ksilema",
        v3: "C.barg",
        v4: "D.gul",
        trueAnswer: "B",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Mitoxondriya qanday vazifani bajaradi?",
        v1: "A.oqsil sintez qiladi",
        v2: "B.energiya ishlab chiqaradi",
        v3: "C.gen saqlaydi",
        v4: "D.suv to‘playdi",
        trueAnswer: "B",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Organizmning irsiy belgilarini tashuvchi birlik nima?",
        v1: "A.gen",
        v2: "B.hujayra",
        v3: "C.to‘qima",
        v4: "D.ferment",
        trueAnswer: "A",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Odam yuragi nechta kameradan iborat?",
        v1: "A.2 ta",
        v2: "B.3 ta",
        v3: "C.4 ta",
        v4: "D.5 ta",
        trueAnswer: "C",
      ),
    );

    biology.add(
      QuizMadel(
        quizanswetr: "Oqsillar qanday moddalardan tuzilgan?",
        v1: "A.glyukozalardan",
        v2: "B.yog‘ kislotalaridan",
        v3: "C.aminokislotalardan",
        v4: "D.vitaminlardan",
        trueAnswer: "C",
      ),
    );

    return biology;
  }
}
