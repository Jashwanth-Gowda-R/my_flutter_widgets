import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['Karan', 'Akshit', 'Gaurav', 'Aasif']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List and grid views'),
        backgroundColor: Colors.red,
      ),
      body: GridViewBuilder(
        fruits: fruits,
        fruits_person: fruits_person,
      ),
    );
  }
}

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
    required this.fruits,
    required this.fruits_person,
  });

  final List<String> fruits;
  final Map fruits_person;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: fruits.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(fruits_person['fruits'][index]),
              subtitle: Text(fruits_person['names'][index]),
              leading: const Icon(Icons.person),
            ),
          );
        },
      ),
    );
  }
}

class GridViewManual extends StatelessWidget {
  const GridViewManual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: const [
          Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('fruits'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('fruits'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('fruits'),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
    required this.fruits,
    required this.fruits_person,
  });

  final List<String> fruits;
  final Map fruits_person;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {},
            title: Text(fruits_person['fruits'][index]),
            subtitle: Text(fruits_person['names'][index]),
            leading: const Icon(Icons.person),
          ),
        );
      },
    );
  }
}

class ListViewManual extends StatelessWidget {
  const ListViewManual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Orange'),
            subtitle: Text('fruits'),
          ),
        ),
      ],
    );
  }
}
