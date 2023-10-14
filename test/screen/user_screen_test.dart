import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/model/user_model.dart';
import 'package:unit_test/screen/user_screen.dart';

void main() {
  testWidgets('Display the user List', (tester) async {
    final user= [
      UserModel(name: 'Chetan', id: 1, email: 'cmali4596@gmail.com'),
      UserModel(name:'varsha', id: 2, email: 'varu@gmail.com'),
      UserModel( name: 'amey', id: 3, email: 'amey@gmail.com'),
      ];

      Future<List<UserModel>> mcokFetchUser() async{
        return Future.delayed(Duration(seconds: 2),()=>user);
        // return user;
      }
    
    await tester.pumpWidget( MaterialApp(
      home: UserPage(futureUser: mcokFetchUser(),),
    ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);


  //  await tester.pump();
  //  expect(find.byType(ListView),findsOneWidget);

   await tester.pumpAndSettle();
   expect(find.byType(ListTile), findsNWidgets(user.length));

   for(final users in user){
    expect(find.text(users.name),findsOneWidget);
    expect(find.text(users.email), findsOneWidget);
   }
  },);
}