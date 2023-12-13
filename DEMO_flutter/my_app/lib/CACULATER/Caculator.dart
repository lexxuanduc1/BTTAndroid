import 'package:flutter/material.dart';
import 'package:my_app/CACULATER/CaculatorSCR.dart';
void main()=>runApp(Caculator());
class Caculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("CACULATOR")),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: CaculaterSCR()
        ),
      )
    );

  }

}