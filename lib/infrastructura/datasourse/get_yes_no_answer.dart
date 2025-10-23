
import 'package:dio/dio.dart';
//import 'package:flutter/dio.dart';
import 'package:flutter_application_2/domain/entities/message.dart';
import 'package:flutter_application_2/infrastructura/dto/yes_no_answer.dart';

class GetYesNoAnswer {
  final Dio _dio = Dio(BaseOptions(baseUrl : 'https://yesno.wtf'));

  Future<Message> fetchAnswer() async {
    final response = await _dio.get('/api');
    final YesNoAnswer answerDto = YesNoAnswer.fromJson(response.data);
    return Message(
      text: answerDto.answer == 'yes' ? 'Si' : 'No',
      imageUrl: answerDto.image,
      fromWho: FromWho.her,
    );
  }
}