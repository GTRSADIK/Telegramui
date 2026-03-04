import 'package:flutter/material.dart';
import '../Models/Chart_Models.dart';
import '../Models/Drawer_Screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeleChatGram'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl),
            ),
            title: Text(
              items[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              items[i].message,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
            trailing: Text(items[i].time),
          );
        },
        separatorBuilder: (ctx, i) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF65a9e0),
        child: const Icon(Icons.call),
      ),
    );
  }
}
