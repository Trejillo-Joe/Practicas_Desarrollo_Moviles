import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/entities/message.dart';

class ChatProvider with ChangeNotifier {
  final List<Message> messagesList = [
    Message(text: "Hola como estas nena?", imageUrl: "https://yesno.wtf/api", fromWho: FromWho.her),
    Message(text: "Hola, todo bien y tu?", fromWho: FromWho.me),
    Message(text: "Muy bien, que planes tienes para hoy?", imageUrl: "https://yesno.wtf/api", fromWho: FromWho.her),
    Message(text: "Nada especial, solo descansar.", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String message) async {
    final newMessage = Message(text: message, fromWho: FromWho.me);
    messagesList.add(newMessage);
    notifyListeners();
  }
}