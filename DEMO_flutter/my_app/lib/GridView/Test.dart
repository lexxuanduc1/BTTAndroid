import 'package:flutter/material.dart';
void main()=>runApp(GridView());
class GridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("GridView"),
         backgroundColor: Colors.blue,
         actionsIconTheme: IconThemeData(color: Color.lerp(Colors.blue, Colors.blue,double.nan)),
       ),
     )
   );
  }

}