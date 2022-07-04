import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

//import 'package:http/http.dart';
void main() {
  runApp(
      Myapp()
  );
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  int limgno=1;
  int rimgno=1;
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[400],
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          title: Text('CUTENESS...'),
        ),
        body:
        Center(
          child: Row(
              children: [
                Expanded(
                    child:
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            limgno = Random().nextInt(2)+1;
                          });
                        },
                        child: Image.asset('image/$limgno.png'))
                ),
                Expanded(
                  child:
                  FlatButton(
                      onPressed: () {
                        setState((){
                          rimgno = Random().nextInt(2)+1;
                        });
                      },
                      child: Image.asset('image/$rimgno.png')
                  ),
                )

              ]
          ),
        ),
      ),
    );
  }
}

