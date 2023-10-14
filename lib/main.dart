import 'package:flutter/material.dart';
import 'package:unit_test/controller/user_repositry.dart';
import 'package:unit_test/screen/animation_screen.dart';
import 'package:unit_test/screen/home_screen.dart';
import 'package:unit_test/screen/list_screen.dart';
import 'package:unit_test/screen/map_page.dart';
import 'package:unit_test/screen/register_screen.dart';
import 'package:unit_test/screen/user_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimationScreen(), 
      // UserPage(
      //   futureUser: UserRepo().fetchUser(), 
      // ),
    );
  }
}


