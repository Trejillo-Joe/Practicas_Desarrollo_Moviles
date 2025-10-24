import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget {
  final Function(String) onSend;
  const MessageFieldBox({super.key, required this.onSend, required void Function(String value) onValue});

  @override
  State<MessageFieldBox> createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: _customInputDecoration(
        colors: colors,
        onSend: () {
          print('quiero enviar el mensaje ${textController.text}');
          if (textController.value.text.isNotEmpty) {
            widget.onSend(textController.value.text);
            textController.clear();
            focusNode.requestFocus();
          }
        },
      ),
      onTapOutside: (event) {
        print('Quieren Saber que se hace $event');
        focusNode.unfocus();
      },
      onFieldSubmitted: (value) {
        print(
          'Aqui se puso un enter bien locochon por que despues nos enojamos $value',
        );
        widget.onSend(value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }

  InputDecoration _customInputDecoration({
    required ColorScheme colors,
    required VoidCallback onSend,
  }) => InputDecoration(
    enabledBorder: _customOutlineInputBorder(colors.primary),
    focusedBorder: _customOutlineInputBorder(colors.primaryContainer),
    hintText: 'Envia tu pregunta: ',
    suffixIcon: IconButton(onPressed: onSend, icon: const Icon(Icons.send)),
  );

  OutlineInputBorder _customOutlineInputBorder(Color color) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(20),
      );
}