import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BT1 extends StatefulWidget{
  @override
  State<BT1> createState() =>  BT1State();
  
}
class BT1State extends State<BT1>{


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Dang nhap he thong"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("TenDangnhap"),
            SizedBox(
                width: 200.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                ))
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("MatKhau"),
            SizedBox(
                width: 200.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                ))
          ],),
          ElevatedButton(onPressed: (){

            showAlertDialog(context);

          }, child: Text("Dang nhap"))
        ],

      ),
    );
  }
  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("THONG BAO!!"),
      content: Text("Dang Nhap Thanh cong"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  }