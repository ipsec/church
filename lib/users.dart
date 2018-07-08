import 'dart:async';
import 'dart:convert';

import 'package:church/user.dart';
import 'package:http/http.dart' as http;


Future<List<User>> fetchUsers() async {
  final response =
  await http.get('https://api.church.ribeiro.eng.br/users/');
  final responseJson = json.decode(response.body);

  return User.fromJson(responseJson);
}