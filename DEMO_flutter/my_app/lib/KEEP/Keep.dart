import 'package:flutter/material.dart';
import 'package:my_app/KEEP/BottomNavigationBarClass.dart';
import 'package:my_app/KEEP/Garbage.dart';
import 'package:my_app/KEEP/HelpAndFeedback.dart';
import 'package:my_app/KEEP/Keep.dart';
import 'package:my_app/KEEP/NewLabel.dart';
import 'package:my_app/KEEP/NotePage.dart';
import 'package:my_app/KEEP/Reminder.dart';
import 'package:my_app/KEEP/Setting.dart';
import 'package:my_app/KEEP/storage.dart';

void main()=>runApp(MaterialApp(home: Keep(),));
class Keep extends StatefulWidget{
  @override
  State<Keep> createState() => KeepState();
}

class KeepState extends State<Keep> {
  String text='';
  int index = 0;
  static const TextStyle optionStyle= TextStyle(fontSize: 30,fontWeight: FontWeight.bold,);
  static const List<Widget> widgetoptions=<Widget>[
    Text(
      "A",
      style: optionStyle,
    ),
    Text(
      "B",
      style: optionStyle,
    ),
    Text(
      "C",
      style: optionStyle,
    ),
    Text(
      "D",
      style: optionStyle,
    ),


  ];
  @override
  Widget build(BuildContext context) {

      return Scaffold(

          appBar: AppBar(
            title: Center(child: Text("Keep-Ghi Chú")),
          ),
          drawer: Drawer(

            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                    accountName: const Text("DUC-Sama"),
                  accountEmail: const Text("lexuanduc147@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        "https://i.pinimg.com/564x/c7/3a/bd/c73abd9401a025ecc067cbda14baee6f.jpg",
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.pinkAccent,
                    image:DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://media.muanhatructuyen.vn/post/221/3/hinh-nen-may-trang-sao-ngo-nghinh.jpg")
                    )
                  ),
                ),
                ListTile(
                  title: const Text("Ghi Chú"),
                  leading: const Icon(Icons.lightbulb),
                  onTap: ()=> KeeptonextScreen(context),
                ),
                ListTile(
                  title: Text("Lời nhắc"),
                  leading: Icon(Icons.doorbell_outlined),
                  onTap: ()=> RemindertonextScreen(context),
                ),
                ListTile(
                  title: Text("Tạo nhãn mới"),
                  leading: Icon(Icons.add),
                  onTap: ()=> NewLabeltonextScreen(context),
                ),
                ListTile(
                  title: Text("Lưu trữ"),
                  leading: Icon(Icons.download),
                  onTap: ()=> storagetonextScreen(context),
                ),
                ListTile(
                  title: Text("thùng rác"),
                  leading: Icon(Icons.recycling_outlined),
                  onTap: ()=> GarbagetonextScreen(context),
                ),
                ListTile(
                  title: Text("Cài đặt"),
                  leading: Icon(Icons.settings),
                  onTap: ()=> SettingtonextScreen(context),
                ),
                Divider(),
                ListTile(
                  title: Text("Trợ giúp và phản hồi"),
                  leading: Icon(Icons.question_mark_sharp),
                  onTap: ()=> HelpAndFeedbacktonextScreen(context),
                )
              ],
            ),

          ),
         floatingActionButton:FloatingActionButton(

           onPressed: () =>NotePagetonextScreen(context),
           child:  const Icon(Icons.add),

         ),
         // body:widgetoptions.elementAt(index),
        body: Center(
          child: Text(text),
        ),

        bottomNavigationBar: BottomNavigationBarClass(emitIndex: (val){
          setState(() {
            index = val;
          });
        }),

        );

  }

void RemindertonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reminder()));
}

  void KeeptonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Keep()));
  }

void NewLabeltonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewLabel()));
  }

  void storagetonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>storage()));
  }

  void GarbagetonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Garbage()));
  }

  void SettingtonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Setting()));
  }

  void HelpAndFeedbacktonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HelpAndFeedback()));
  }

  void NotePagetonextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotePage()));

  }
}


