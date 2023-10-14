import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:unit_test/controller/post_controller.dart';
import 'package:unit_test/model/post_model.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  final PostController postController = Get.put(PostController(Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body:FutureBuilder<PostModel?>(
        future: postController.getPost(),
        builder:(context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else
            if(snapshot.hasError){
              return Text('Error ${snapshot}');
            }else{
              final result  = snapshot.data;
              return ListView.builder(
                  itemCount: 20,
                  itemBuilder:(context,index){
                    return ListTile(
                      title:Text(result!.name),
                      subtitle: Text(result.email),
                     trailing: Text(result.website),
                    );
                  }
              );
            }
        } ,
      ),
    );
  }
}
