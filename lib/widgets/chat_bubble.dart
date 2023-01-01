import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final Alignment alignment;
  const ChatBubble({Key? key, required this.alignment,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: alignment,
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "$text",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              //  image code
            ],
          ),
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12)
              )
          ),
        )
    );;
  }
}
