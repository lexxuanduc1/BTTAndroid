import 'package:flutter/material.dart';

class BottomNavigationBarClass extends StatefulWidget{
  const BottomNavigationBarClass({super.key, required this.emitIndex});
  final Function emitIndex;

  @override
  State<StatefulWidget> createState() => BottomNavigationBarClassState();



}

class BottomNavigationBarClassState  extends State<BottomNavigationBarClass>{

  int selectedIdex=0;

  void onIteamTapped(int index){
    setState(() {
      selectedIdex=index;
    });
    widget.emitIndex(index);
  }

  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(
       items:  const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           backgroundColor: Colors.black,
             icon: Icon(Icons.check_box),
           label: '',

         ),
         BottomNavigationBarItem(
             backgroundColor: Colors.black,
             icon: Icon(Icons.draw_outlined),
           label: ''
         ),
         BottomNavigationBarItem(
             backgroundColor: Colors.black,
             icon: Icon(Icons.mic),
           label: ''
         ),
         BottomNavigationBarItem(
             backgroundColor: Colors.black,
             icon: Icon(Icons.picture_in_picture_alt_rounded),
           label: ''
         ),

       ],
       currentIndex: selectedIdex,

       onTap: onIteamTapped,

   );

  }
}