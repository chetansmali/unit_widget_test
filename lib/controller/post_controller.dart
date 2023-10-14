import 'dart:convert';

import 'package:get/get.dart';
import 'package:unit_test/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController {

  final http.Client client;
  PostController(this.client);
  void onInit(){
    super.onInit();
    getPost();
  }

  Future<PostModel?> getPost() async {
    const URL = "https://jsonplaceholder.typicode.com/users/1";

    final res = await client.get(Uri.parse(URL));
    if(res.statusCode == 200){
      var val = json.decode(res.body);
      final postData = PostModel.fromJson(val);
      return postData;
    }else{
        Get.snackbar('Error', 'Error ${res.statusCode}');
        return null;
    }
  }
}