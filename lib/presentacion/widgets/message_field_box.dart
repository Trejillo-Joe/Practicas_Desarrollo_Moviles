import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget {
  final void Function(String value) onValue;
  const MessageFieldBox({super.key, required this.onValue});

  State<MessageFieldBox> createState() => _MessageFieldBoxState();

}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: _customInputDecoration(
        colors: colors,
        onSend: () {
          print('quiero envirar el mensaje = ${textController.value.text}');
          if (textController.value.text.isNotEmpty) {
            widget.onValue(textController.value.text);
            textController.clear();
            focusNode.requestFocus();
          }
        },
      ),
      onTapOutside: (event) {
        print('Quiero saber que haces $event');
        focusNode.unfocus();
      },
      onFieldSubmitted: (value) {
        print('Pus locochon pa que no se enchile $value');
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
        focusedBorder: _customOutlineInputBorder(colors.primary),
        hintText: 'Escribe un mensaje',
        suffixIcon: IconButton(onPressed: () {onSend(); widget.onValue(textController.text);}, icon: Icon(Icons.send)),
      );

   OutlineInputBorder _customOutlineInputBorder(Color color) =>
    OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: color),
      );
    
  }
