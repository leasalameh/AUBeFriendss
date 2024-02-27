import 'package:flutter/material.dart';
import 'package:project_app/src/features/screens/profile/profile_screen.dart';


import 'package:project_app/src/features/screens/welcome/welcome_screen.dart';

// Mock Chat class
class Chat {
  final String name;
  final String message;

  Chat({required this.name, required this.message});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Chat> chats = [
      Chat(name: "Hasan", message: "Hello"),
      Chat(name: "Ryan", message: "Hi"),
      Chat(name: "Lea", message: "Hey"),
      Chat(name: "Bob", message: "Hey"),

    ];

    return MaterialApp(
      title: 'Chats App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(chats: chats),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Chat> chats;

  const HomeScreen({Key? key, required this.chats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.account_circle),
            Text('  Chats'),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.5),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(left: 75),
                  leading: CircleAvatar(
                    child: Text(chats[index].name[0]),
                  ),
                  title: Text(chats[index].name),
                  subtitle: Text(chats[index].message),
                  onTap: () {
                    // Open chat screen for this chat
                    // You can navigate to a new screen here
                  },
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ProfileScreen(),
      ),
    );
  }
}

