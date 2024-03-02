import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{


  MysnckBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Pop Up Menu Button"),
        titleSpacing: 20,
        actions: [
          PopupMenuButton(
          itemBuilder: (context){
          return
          [

            PopupMenuItem(
              child: GestureDetector
                (
                  child: Text('Home',style: TextStyle(color: Colors.deepOrange))
                ),
                 // value: 'Home',
                  onTap: (){
                  MysnckBar('I am Home', context);
                  }
            ),

            PopupMenuItem(
              child: GestureDetector
                (
                  child: Text('Chat',style: TextStyle(color: Colors.teal))
                ),
               //value:'chat',
                onTap: (){
                MysnckBar('I am Chat', context);
              }
            ),


            PopupMenuItem(
              child: GestureDetector
                (
                  child: Text('Notification',style: TextStyle(color: Colors.pink))
                ),
               //value:'Notiication',
               onTap: (){
                MysnckBar('I am Notiication', context);
              }
            ),
          ];

          },
            offset:Offset(0,50),// offset used for pop menu bar inside botton
          ),

        ],
      ),

    );
  }
}