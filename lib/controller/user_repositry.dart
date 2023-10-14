import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:unit_test/model/user_model.dart';

class UserRepo{
  Future<List<UserModel>> fetchUser() async{
    final res= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if(res.statusCode == 200){
      final List<dynamic> jsonList = json.decode(res.body);
      return jsonList.map((e) => UserModel.formJson(e)).toList();
    }else{
      throw Exception('fail to fetch the user');
    }
  }
}