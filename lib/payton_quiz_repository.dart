import 'package:quiz_app/quiz_madel.dart';

class PaytonQuizRepository {
  static String about = "Python dasturlash bo'yicha testlar";
  static String lesson = "Python O'zgaruvchilar va Asoslar";

  static List<QuizMadel> paytonquiztest() {
    List<QuizMadel> history = [];

    history.add(
      QuizMadel(
        quizanswetr: "Python dasturlash tilining asoschisi kim?",
        v1: "A.Guido van Rossum",
        v2: "B.James Gosling",
        v3: "C.Dennis Ritchie",
        v4: "D.Bjarne Stroustrup",
        trueAnswer: "A",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Python qaysi yilda yaratilgan?",
        v1: "A.1985",
        v2: "B.1991",
        v3: "C.2000",
        v4: "D.1995",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Python'da o'zgaruvchi qanday e'lon qilinadi?",
        v1: "A.int x = 5",
        v2: "B.var x = 5",
        v3: "C.x = 5",
        v4: "D.let x = 5",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr:
            "Python'da matn chiqarish uchun qaysi funksiya ishlatiladi?",
        v1: "A.echo()",
        v2: "B.print()",
        v3: "C.console.log()",
        v4: "D.printf()",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Python fayllarining kengaytmasi qanday?",
        v1: "A..pt",
        v2: "B..py",
        v3: "C..python",
        v4: "D..pyt",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Python'da izoh (comment) qanday yoziladi?",
        v1: "A.// izoh",
        v2: "B.<!-- izoh -->",
        v3: "C.# izoh",
        v4: "D.** izoh",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Quyidagilardan qaysi biri Python ma'lumot turi?",
        v1: "A.integer",
        v2: "B.int",
        v3: "C.number",
        v4: "D.real",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Python'da ro'yxat (list) qanday yoziladi?",
        v1: "A.{1,2,3}",
        v2: "B.[1,2,3]",
        v3: "C.(1,2,3)",
        v4: "D.<1,2,3>",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr: "Python katta-kichik harflarga sezgirmi?",
        v1: "A.Ha",
        v2: "B.Yo'q",
        v3: "C.Faqat Windowsda",
        v4: "D.Faqat Linuxda",
        trueAnswer: "A",
      ),
    );

    history.add(
      QuizMadel(
        quizanswetr:
            "Python'da foydalanuvchidan ma'lumot olish uchun qaysi funksiya ishlatiladi?",
        v1: "A.get()",
        v2: "B.read()",
        v3: "C.input()",
        v4: "D.scan()",
        trueAnswer: "C",
      ),
    );

    return history;
  }
}
