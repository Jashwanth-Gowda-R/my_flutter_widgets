import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer widget'),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.deepPurple.shade900,
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jashwanth',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('Flutter dev'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Folders'),
              ),
              const ListTile(
                leading: Icon(Icons.person_off),
                title: Text('My profile'),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('My trash'),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Hi boss'),
      ),
    );
  }
}
