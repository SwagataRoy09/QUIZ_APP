import 'package:g_d/Question.dart';

class Question_folder{
  List<Question> list = [
    Question("What is Flutter?", {
         "A. Flutter is an open-source DBMS":false,
         "B.Flutter is an open-source UI toolkit":true,
         "C.Flutter is an open-source backend toolkit":false,
         "D.All of above":false
        }),
    Question("Flutter is developed in ________.", {
      "A. May 2017":true,
      "B.May 2018":false,
      "C.May 2016":false,
      "D.May 2019":false
    }),
    Question("Is Flutter a programming language?", {
      "A.Yes":false,
      "B.No":true,
      "C.May be":false,
      "D.Can't say":false
    }),
    Question("Flutter is mainly optimized for _________ that can run on both Android and iOS platforms.", {
      "A.2D mobile apps":true,
      "B.Desktop only":false,
      "C.Tablet only":false,
      "D.None of the above":false
    }),
  ];
}



