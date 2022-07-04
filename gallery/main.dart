import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:http/http.dart';
void main() {
  runApp(
      Myapp()
  );
}
class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('PROFILE'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Center(
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/1.jpg'),
                )
            ),
            AnimatedTextKit(
              animatedTexts:[ TyperAnimatedText (
                'SWAGATA ROY',
                textStyle: TextStyle(
                  fontFamily: 'Pacifico',
                  color:Colors.black,
                  fontSize: 30.0,
                  fontWeight:FontWeight.bold,
                ),
              ),
                TyperAnimatedText(
                  'JAVA AND FLUTTER DEVELOPER',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )],
            ),
            SizedBox(
              height: 10.0,
            ),

            Divider(
              thickness: 2.5,
              height: 19.0,
              indent: 20.0,
              endIndent:20.0,
              color: Colors.black,
            ),
            SizedBox(
              height: 19.0,
            ),
            Padding(padding: EdgeInsets.all(10.0),
              child:Card(
                  color:Colors.yellow,
                  margin: EdgeInsets.all(20.0),
                  //padding: EdgeInsets.only(left: 52.0),
                  child:ListTile(
                    leading: Icon(Icons.call,
                      color:Colors.red,
                    ),
                    title: Text('+91 8514006551',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 21.0,
                      ),
                    ),
                  )
              ),
            ),
            Padding(padding: EdgeInsets.all(0.0),
                child:Card(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(20.0),

                    child:ListTile(
                      leading: Icon(Icons.mail,
                        color: Colors.red,),
                      title:Text('swagataroy.dgp@gmail.com',
                          style:
                          TextStyle(
                              color: Colors.red,
                              fontSize: 18.0
                          )
                      ),
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
// Row(
// children: [
// Icon(Icons.call,
// color:Colors.red,
// ),
// SizedBox(
// width: 20.0,
// ),
// Text('+91 8514006551',
// style: TextStyle(
// color: Colors.red,
// fontSize: 21.0,
// ),),
// ],
// )


// Row(
// children: [
// Icon(Icons.mail,
// color: Colors.red,),
// SizedBox(
// width: 20.0,
// ),
// Text('swagataroy.dgp@gmail.com',
// style:
// TextStyle(
// color: Colors.red,
// fontSize: 21.0
// )),
// ],
//),