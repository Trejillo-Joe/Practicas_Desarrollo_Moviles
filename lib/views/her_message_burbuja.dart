import 'package:flutter/material.dart';
//import 'package:flutter_application_2/widgets/image_burbuja.dart';
import 'package:flutter_application_2/widgets/messages_Burbuja.dart';

class HerMessageBubbleView extends StatelessWidget {
  final ColorScheme colorScheme;
  final String urlImageBurbuja;
  const HerMessageBubbleView({
    super.key,
    required this.colorScheme,
    required this.urlImageBurbuja,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colorScheme.secondary,
      child: null,
      urlImageBurbuja: urlImageBurbuja,
    );
  }
}