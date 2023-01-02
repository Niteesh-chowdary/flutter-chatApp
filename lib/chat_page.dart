import 'package:flutter/material.dart';
import 'package:linked_in_learning/widgets/chat_bubble.dart';
import 'package:linked_in_learning/widgets/chat_input.dart';

import 'models/chat_message_entity.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
        author: Author(userName: 'Niteesh97'),
        createdAt: 2131231242,
        id: '1',
        text: 'First text'),
    ChatMessageEntity(
        author: Author(userName: 'Niteesh97'),
        createdAt: 2131231442,
        id: '1',
        text: 'Second text',
        imageUrl: 'https://3009709.youcanlearnit.net/Alien_LIL_131338.png'),
    ChatMessageEntity(
      author: Author(userName: 'jane'),
      createdAt: 2131234242,
      id: '1',
      text: 'Third text',
    )
  ];

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
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        alignment: _messages[index].author.userName == 'Niteesh97'
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        entity: _messages[index]);
                  })),
          ChatInput(),
        ],
      ),
    );
  }
}
