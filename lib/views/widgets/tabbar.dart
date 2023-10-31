import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'CHAT',
              ),
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: 'STATUS',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.yellow,
              child: const Center(
                child: Text('Chats'),
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text('Status'),
              ),
            ),
            Container(
              color: Colors.purple,
              child: const Center(
                child: Text('Calls'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
