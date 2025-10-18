import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentacion/widgets/messages_Burbuja.dart';

class MyMessageBubbleView extends StatelessWidget {
  final ColorScheme colorScheme;
  final String message;
  const MyMessageBubbleView({
    super.key,
    required this.colorScheme,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.end,
      colorBubble: colorScheme.primary,
      child: Text(message, style: TextStyle(color: colorScheme.onPrimary)),
    );
  }
}