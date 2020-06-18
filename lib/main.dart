import'package:flutter/material.dart';
import 'dart:math';

void main()=>runApp(Z0());

class Z0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amberAccent,
      title: 'dicee',
      debugShowCheckedModeBanner: false,
      home: Z1(),
    );
  }
}

class Z1 extends StatefulWidget {
  @override
  _Z1State createState() => _Z1State();
}

class _Z1State extends State<Z1> {
  int l1 = 1, l2 = 1;
  Expanded dice(int n){
    return Expanded(
     child: FlatButton(
       child: Image.asset('images/${(n>0&&n<7?n:1)}.png'),
       onPressed: (){
         setState(() {
         l1 = Random().nextInt(6)+1;
         l2 = Random().nextInt(6)+1;
       });},
  ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              dice(l1),
              dice(l2),
            ],
          ),
        ),
      ),
    );
  }
}
