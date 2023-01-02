import 'package:flutter/material.dart';
import 'package:linked_in_learning/chat_page.dart';

import 'package:linked_in_learning/login_page.dart';
import 'package:linked_in_learning/utils/brand_Color.dart';


void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(primarySwatch: BrandColor.primarygreen,appBarTheme: AppBarTheme(backgroundColor: BrandColor.primarygreen,foregroundColor: BrandColor.primaryblack)),
      home: LoginPage(),
      routes: {
        '/chat':(context)=> ChatPage(),
      },
    );
  }
}

