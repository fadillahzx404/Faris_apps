import 'dart:convert';

import 'package:faris_app/model/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class UsersProvider extends ChangeNotifier {
  Future<List<Users>> getRecomendedUsers() async {
    try {
      var result = await http.get(
        Uri.parse('https://6314c5e6fa82b738f74de9b0.mockapi.io/users'),
      );

      if (result.statusCode == 200) {
        List data = jsonDecode(result.body);
        List<Users> users = data.map((item) => Users.fromJson(item)).toList();

        notifyListeners();
        return users;
      }
    } catch (e) {
      print('Error: $e');
    }
    return <Users>[];
  }
}
