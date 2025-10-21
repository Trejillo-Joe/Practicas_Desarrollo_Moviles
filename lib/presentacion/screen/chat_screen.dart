import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentacion/views/chat_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trejillo Chat'),centerTitle: true,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://www.de10.com.mx/resizer/v2/ODRWYGEXJZHMXLGUWXJ2Y6MAEY.PNG?auth=71da74c19c092022f45db4105303f01965a3466812bd17534abbf3cc279de6d1&smart=true&height=620'),
        ),
      ),
      body: ChatView(),
    
    );
  }
}