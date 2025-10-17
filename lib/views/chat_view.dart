import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/My_message_burbuja.dart';
import 'package:flutter_application_2/views/her_message_burbuja.dart';
import 'package:flutter_application_2/widgets/message_field_box.dart';
//import 'package:flutter_application_2/widgets/messages_Burbuja.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? HerMessageBubbleView(
                          colorScheme: colorScheme,
                          urlImageBurbuja:
                              "https://yesno.wtf/api",
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: "Hola mundo",
                        );
                },
              ),
            ),
          ),
          const MessageFieldBox(),
        ],
      ),
    );
  }
}



