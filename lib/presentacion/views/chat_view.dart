// ...existing code...
import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/entities/message.dart';
import 'package:flutter_application_2/presentacion/views/My_message_burbuja.dart';
import 'package:flutter_application_2/presentacion/views/her_message_burbuja.dart';
import 'package:flutter_application_2/presentacion/widgets/message_field_box.dart';
import 'package:flutter_application_2/providers/chat_provider.dart';


import 'package:provider/provider.dart';
//import 'package:flutter_application_2/widgets/messages_Burbuja.dart';

class ChatView extends StatelessWidget {
  final void Function(String value) onValue;
  const ChatView({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: chatProvider.messagesList.length,
                itemBuilder: (context, index) {
                  final chatMessage = chatProvider.messagesList[index];
                  return chatMessage.fromWho == FromWho.her
                      ? HerMessageBubbleView(
                          colorScheme: colorScheme,
                          urlImageBurbuja:
                              chatProvider.messagesList[index].imageUrl!,
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: chatProvider.messagesList[index].text,
                        );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: MessageFieldBox(
              onValue: onValue,
              onSend: (value) async {
                print('Quiero enviar el mensaje desde chat view $value');
                await chatProvider.sendMessage(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
// ...existing code...