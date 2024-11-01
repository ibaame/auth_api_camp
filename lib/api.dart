import 'dart:convert';

import 'package:http/http.dart' as http;
import 'user.dart';

List<User> users = [];

Future<void> fetchUsers() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body) as List;
    users = data.map((user) => User.fromMap(user)).toList();
  } else {
    print('error');
  }
}
