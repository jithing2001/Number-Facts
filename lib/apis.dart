import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:numbers/numberfact/numberfact.dart';

Future<Numberfact> getnumber({required String number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));

  final bodyasjson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = Numberfact.fromJson(bodyasjson);
  print(data);
  return data;
}
