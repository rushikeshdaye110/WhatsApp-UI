import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue[300],
          shape: const RoundedRectangleBorder(

 borderRadius: BorderRadius.only(

 bottomLeft: Radius.circular(25),

bottomRight: Radius.circular(25)

 )

),
            title: Text('WhatsApp'),
            collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
                title: Row(children: [
              Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 13,
              ),
              Text('Chat'),
              SizedBox(
                width: 13,
              ),
              Text('Group'),
              SizedBox(
                width: 13,
              ),
              Text('Status'),
              SizedBox(
                width: 13,
              ),
              Text('Calls'),
            ])),
            actions: [
              IconButton(
                icon: Icon(Icons.camera),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.wifi),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text("Ashish Shinde"),
              subtitle: Text("Tejas :Hi"),
              trailing: Text("10:10"),
              leading: Image.asset('lib/flutter.jpg'),
            );
          }))
        ]),
      ),
    );
  }
}
