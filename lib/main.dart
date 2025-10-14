import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/chat_screen.dart';
import 'package:flutter_application_2/config_theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColors: 1).Theme(),
      home: const ChatScreen(),
    );
  }
}
