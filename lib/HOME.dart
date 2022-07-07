import 'package:g_d/Result.dart';
import 'package:flutter/material.dart';
import 'package:g_d/main.dart';
import 'package:g_d/Question.dart';
import 'package:g_d/Question_folder.dart';
class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}
class _QuizState extends State<Quiz> {
  int pageNo = 0,score=0,qstn=1;
  int length=Question_folder().list.length;
  bool ispressed = false, answered = false;
  PageController pageController = PageController(initialPage: 0);
  @override
  int index = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black54,
            appBar: AppBar(
                title: Center(
                    child: Text('QUIZ',
                        style: TextStyle(
                          fontFamily: 'ChakraPetch',
                          color: Colors.cyanAccent,
                          shadows: [
                            Shadow(
                                color: Colors.tealAccent.withOpacity(.4),
                                offset: Offset(4, 4),
                                blurRadius: 5)
                          ],
                        ))),
                backgroundColor: Colors.black45,
                shadowColor: Colors.tealAccent),
            body: PageView.builder(
                controller: pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (page){
                  setState((){
                    ispressed=false;
                    answered=false;
                  });
                },
                itemCount: Question_folder().list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('QUESTION $qstn/$length',style: TextStyle(color: Colors.grey[300])),
                            SizedBox(
                              height:25.0,
                            ),
                            Center(
                              child: Container(
                                child: Text(
                                  new Question_folder().list[index].questions,
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                            color: Colors.tealAccent.withOpacity(.4),
                                            offset: Offset(4, 4),
                                            blurRadius: 5)
                                      ],
                                      color: Colors.cyanAccent,
                                      fontFamily: 'ChakraPetch',
                                      fontSize: 20.6),
                                ),
                                padding: EdgeInsets.only(left: 10.0, right: 5.0),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Divider(
                              color: Colors.tealAccent,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            for (int i = 0;
                            i < Question_folder().list[index].map!.length;
                            i++)
                              Center(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 15.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(vertical: 10.0),
                                      maximumSize: Size(300, 50),
                                      minimumSize: Size(300, 50),
                                      shadowColor: Colors.tealAccent,
                                      elevation: 8,
                                      primary: Colors.black54,
                                      shape: BeveledRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: ispressed
                                                ? Question_folder()
                                                .list[index]
                                                .map!
                                                .values
                                                .toList()[i]
                                                ? Colors.green
                                                : Colors.red
                                                : Colors.tealAccent,
                                          )),
                                    ),
                                    child: Text(
                                      Question_folder()
                                          .list[index]
                                          .map!
                                          .keys
                                          .toList()[i],
                                      style: TextStyle(
                                          color: Colors.cyanAccent,
                                          fontFamily: 'ChakraPetch'),
                                    ),
                                    onPressed: !answered ? () {
                                      if (Question_folder().list[index].map!.values.toList()[i]) {
                                        score=score+10;
                                      } else {
                                        score+=0;
                                      }
                                      setState(() {
                                        ispressed = true;
                                        answered = true;
                                      });
                                    }
                                        : null,
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: 55.0,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                onPressed: () {
                                  if (pageController.page?.toInt() == Question_folder().list.length - 1) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(score)));
                                  } else {
                                    pageController.nextPage(
                                        duration: Duration(milliseconds: 250),
                                        curve: Curves.easeInExpo);
                                    setState(() {
                                      ispressed = false;
                                      qstn++;
                                    });
                                  }
                                },
                                icon:
                                Icon(Icons.arrow_forward_ios, color: Colors.tealAccent, shadows: [
                                  Shadow(
                                      color: Colors.tealAccent.withOpacity(.4),
                                      offset: Offset(3, 3),
                                      blurRadius: 8)
                                ]),
                              ),
                            ),
                          ]));
                }),
          ),
        ));
  }
}
