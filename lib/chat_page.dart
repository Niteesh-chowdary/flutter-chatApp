import 'package:flutter/material.dart';
import 'package:linked_in_learning/widgets/chat_bubble.dart';
import 'package:linked_in_learning/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text('Hi ${username}!')),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context,'/');
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            //TODO: Create a dynamic sized list
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        alignment: index % 2 == 0
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        text: "Hello, this is Pooja!");
                  })),
          ChatInput(),
        ],
      ),
    );
  }
}
