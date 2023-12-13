import 'package:flutter/material.dart';
import 'package:my_app/Test1.dart';
import 'package:my_app/hello.dart';
import 'BT1.dart';
import 'BT2.dart';
void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'My App',
      home: Scaffold(
        appBar: AppBar(
        title:Text('Hello men to Flutter'),

         ),
         body:Center(
         child: BT2())
    ),
    );
  }

}
