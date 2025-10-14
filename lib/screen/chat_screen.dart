import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trejillo Chat'),centerTitle: true,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://www.tvazteca.com/aztecauno/famosos/se-ve-belinda-sin-maquillaje-a-sus-36-anos-estas-fotos-impacto-a-sus-fans'),
        ),
      ),
      body: Placeholder(),
    
    );
  }
}