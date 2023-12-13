

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hello extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HelloState();

}
class HelloState extends State<Hello>{
  String text = "";
  bool check = false;
  setText() {
    setState(() {
      if(check){
        text = "bam cai loz ma";
        check = !check;
      }
      else {
        text = "";
        check = !check;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Expanded(flex: 1,child: Text(text)),
          ElevatedButton(onPressed: setText, child: Text("click"))
        ],
      ),
    );
  }

}