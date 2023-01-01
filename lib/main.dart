import 'package:flutter/material.dart';
import 'package:linked_in_learning/chat_page.dart';

import 'package:linked_in_learning/login_page.dart';


void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(primarySwatch: Colors.green,appBarTheme: AppBarTheme(backgroundColor: Colors.green,foregroundColor: Colors.black)),
      home: LoginPage(),
      routes: {
        '/chat':(context)=> ChatPage(),
      },
    );
  }
}

