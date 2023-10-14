import 'package:flutter/material.dart';
import 'package:unit_test/controller/user_repositry.dart';
import 'package:unit_test/model/user_model.dart';

class UserPage extends StatefulWidget {
  final Future<List<UserModel>> futureUser;
  const UserPage({super.key, required this.futureUser});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  
  final UserRepo userRepo= UserRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('User'),),
      body: FutureBuilder<List<UserModel>>(
        future: widget.futureUser,
        builder: (context,snapshot){
          if(snapshot.hasData){
            final List<UserModel> user= snapshot.data!;
            return ListView.builder(
              itemCount: user.length,
              itemBuilder: (context,index){
                final udata = user[index];
                return ListTile(
                  title: Text(udata.name),
                  subtitle:Text(udata.email) ,
                );
              },
            );
          }
          if(snapshot.hasError){
            return Text('snapshot has error');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}