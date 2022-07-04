import 'package:flutter/material.dart';
import 'package:g_d/HOME.dart';
import 'package:g_d/Question_folder.dart';
import 'package:g_d/main.dart';
class Result extends StatefulWidget {
  final int score;
  const Result(this.score, {Key? key}) : super(key: key);
  @override
  State<Result> createState() => _ResultState();
}
class _ResultState extends State<Result> {
  int height=Question_folder().list.length*10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          decoration:(widget.score>=30)? BoxDecoration(image:DecorationImage(image: AssetImage('image/score.gif'),),):
          BoxDecoration(image:DecorationImage(image:AssetImage('image/GOOD.gif')) ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children:[SizedBox(height: 25,),Text(' YOUR SCORE IS :',style:TextStyle(color: Colors.amberAccent,fontSize:40.0,fontFamily: 'ChakraPetch',shadows:[Shadow(
            color:Colors.deepOrangeAccent.withOpacity(.8),
            offset: Offset(4,4),
            blurRadius:10,
          )])),
        SizedBox(height: 25,),
        Text(
                  '${widget.score}/$height',style:TextStyle(color: Colors.amberAccent,fontSize:40.0,fontFamily: 'ChakraPetch',shadows:[Shadow(
                  color:Colors.deepOrangeAccent.withOpacity(.8),
                  offset: Offset(4,4),
                  blurRadius:10,
                )])),
                SizedBox(height:450.0),
                Align(
                  alignment:Alignment.bottomLeft,
                  child:IconButton(
                    padding: EdgeInsets.only(left:30),
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => HOME()));
                    },
                    icon: Icon(Icons.home, color: Colors.amberAccent, shadows: [
                      Shadow(
                          color: Colors.tealAccent.withOpacity(.4),
                          offset: Offset(3, 3),
                          blurRadius: 8)
                    ]),
                  ),
                )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
