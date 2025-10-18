import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentacion/widgets/image_burbuja.dart';

class MessageBubble extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final Color colorBubble;
  final Widget? child;
  final String? urlImageBurbuja;

  const MessageBubble({
    super.key,
    required this.alignment,
    required this.colorBubble,
    this.child,
    this.urlImageBurbuja,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        if (child != null) ...[
          Container(
            decoration: BoxDecoration(
              color: colorBubble,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: child ?? const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 10),
        ],

        if (urlImageBurbuja != null) ...[
          Text(
            urlImageBurbuja!,
            style: const TextStyle(fontSize: 10, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          ImageBubble(imageUrl: urlImageBurbuja!),
        ],
      ],
    );
  }
}