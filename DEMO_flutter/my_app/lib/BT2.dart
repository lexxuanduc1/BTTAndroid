import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BT2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>BT2State();


}

class BT2State extends State<BT2> {
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  String text='';
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 50.0,
              child: TextField(
                controller: a,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Text("X^2+",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
            SizedBox(
              width: 50.0,
              child: TextField(
                controller: b,
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Text("X+",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
            SizedBox(
              width: 50.0,
              child: TextField(
                controller: c,
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Text("",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold))

          ],
        ),
        ElevatedButton(onPressed:()=> {
          Tinh(double.parse(a.text),double.parse(b.text),double.parse(c.text))

        },
            child:Text("Tinh",style: TextStyle(color: Colors.blue,fontSize: 20))
        ),
        Text(
           text,
          style: Theme.of(context).textTheme.headline4,
        )
      ],
    );
  }
  void Tinh(a,b,c){

    double denta=0;
    setState(() {
      denta=b*b-4*a*c;
    });

      if(denta<0)  text = 'phuong trinh vo nghiem';
      else if (denta==0){
        double x=-b/(2*a);
        text= 'phuong trinh co nghiem kep x='+x.toString();

      }
      else{
        double x1=(-b+sqrt(denta))/(2*a);
        double x2=(-b-sqrt(denta))/(2*a);
        text= 'phuong trinh co 2 nghiem phan biet X1='+x1.toString()+",  X2= "+x2.toString();
      }

  }

}