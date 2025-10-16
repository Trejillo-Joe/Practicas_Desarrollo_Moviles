import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final Colors = Theme.of(context).colorScheme;
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: _customInputDecoration(colors: Colors),
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


  InputDecoration _customInputDecoration({required ColorScheme colors}) => 
  InputDecoration(
        enabledBorder: _customOutlineInputBorder(colors.primary),
        focusedBorder: _customOutlineInputBorder(colors.primary),
        hintText: 'Escribe un mensaje'
      );

   OutlineInputBorder _customOutlineInputBorder(Color color) =>
    OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: color),
      );
    
  }
