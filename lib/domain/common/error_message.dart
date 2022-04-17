import 'dart:convert';

class ErrorMessage {
  final String messsage;

  ErrorMessage({required this.messsage});

  factory ErrorMessage.fromJson(String json) {
    final Map<String, dynamic> data = jsonDecode(json);
    return ErrorMessage(messsage: data['detail']);
  }

  @override
  String toString() => messsage;
}
