import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> messagesList = [
    Message(
      text: "Hola como estas nena?", 
      imageUrl: "https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif",
      fromWho: FromWho.her,
    ),
    Message(
      text: "Hola, todo bien y tu?",
      fromWho: FromWho.me,
    ),
    Message(
      text: "Muy bien, que planes tienes para hoy?",
      imageUrl: "https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif",
      fromWho: FromWho.her,
    ),
    Message(
      text: "Nada especial, solo descansar.",
      fromWho: FromWho.me,
    ),
  ];

  Future<void> sendMessage(String message) async {
     final newMessage = Message(text: message, fromWho: FromWho.me);
    messagesList.add(newMessage);
    notifyListeners();
  }
}
