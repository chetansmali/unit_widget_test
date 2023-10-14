import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ok'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext , index){
        return ListTile(
          leading: Icon(Icons.comment),
          trailing: Text('ok'),
          title: Text('jj'),
        );
      }),
    );
  }
}
