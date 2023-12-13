import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main()=>runApp(Test1());
class Test1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("Container"),
         backgroundColor: Colors.blue,
       ),
       body: Center(
         child: Container(
           width: 400,
           height: 400,
           decoration: BoxDecoration(
             color: Colors.green,
             border: Border.all(
                 color: Colors.black,width:5

             ),
           ),

           // child: ListView(
           //   children: [
           //     for(var i=1;i<=10;i++)ElevatedButton(onPressed: null, child:
           //     Text(i.toString()))
           //    
           //   ],
           // ),
           child: GridView.count(
               crossAxisCount: 4,
             children:new List<Widget>.generate(16, (index) {
               return new GridTile(child:
               new Card(
                 color: Colors.black,
                 child: new Center(
                   child: new ElevatedButton(onPressed: null, child:
                   Text('$index',style: TextStyle(color: Colors.white),))
                 ),
               ));
             }
             )


           ),
         ),
       ),
     )

   );
  }
  
}