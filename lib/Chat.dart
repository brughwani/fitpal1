import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'appconstants.dart';
import 'package:dio/dio.dart';


class FitnessChat extends StatefulWidget {
  FitnessChat({Key? key}) : super(key: key);

  @override
  State<FitnessChat> createState() => _FitnessChatState();

}

class _FitnessChatState extends State<FitnessChat> {
  final _user = const types.User(id: 'yyyyyytttttt');
  final _bot=const types.User(id:'sdsdsdsddsd');
  String response="";

  List<types.Message> _messages = [];
  var dio = Dio();

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }


  Future<void> _handleSendPressed(types.PartialText message) async {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime
          .now()
          .millisecondsSinceEpoch,
      id: "tytttttt",
      text: message.text,
    );

    _addMessage(textMessage);
    response=await complete(message.text);
    getresponse(response);
 
  }
  void getresponse(String s) {
    final textMessage = types.TextMessage(
      author: _bot,
      createdAt: DateTime
          .now()
          .millisecondsSinceEpoch,
      id: "tytssss",
      text:s,
    );
    _addMessage(textMessage);

  }
  Future<String> complete(String prompt)
  async {
    var rawjson = {"content":prompt};
    final response = await dio.post(
      'https://jrbjhtv0n8.execute-api.us-east-2.amazonaws.com/ycombinator/hackathon',
      options: Options(contentType: Headers.jsonContentType),
      data:{"prompt":prompt},
    );
    print(response.data);
    print(response.statusCode);
    //return response.data.toString();


    if (response.statusCode == 200) {
      final responseData = response.data;
      print(responseData);
      return responseData.toString();
    } else {
      throw Exception('Failed to generate text');
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Chat(
              theme: const DefaultChatTheme(
                inputBackgroundColor: Colors.red,
                primaryColor: Colors.red,
                secondaryColor: Colors.grey,
              ),
              messages: _messages, onSendPressed: (PartialText) {
            _handleSendPressed(PartialText);
          }, user: _user),
        )
    );
  }
}