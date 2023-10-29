import 'package:flutter/material.dart';

class DissmissiableWidget extends StatefulWidget {
  const DissmissiableWidget({super.key});

  @override
  State<DissmissiableWidget> createState() => _DissmissiableWidgetState();
}

class _DissmissiableWidgetState extends State<DissmissiableWidget> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['Karan', 'Akshit', 'Gaurav', 'Aasif']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissiable widget'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            var fruit = fruits[index];
            var snackbar1 = snackBar(fruit, Colors.amber);
            var snackbar2 = snackBar(fruit, Colors.greenAccent);
            return Dismissible(
              key: Key(fruit),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(snackbar1);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(snackbar2);
                }
              },
              background: Container(
                color: Colors.amber,
              ),
              secondaryBackground: Container(
                color: Colors.greenAccent,
              ),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(fruits_person['fruits'][index]),
                  subtitle: Text(fruits_person['names'][index]),
                  leading: const Icon(Icons.person),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  SnackBar snackBar(String fruit, Color color) {
    return SnackBar(
      content: Text(fruit),
      backgroundColor: color,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      showCloseIcon: true,
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
  }
}
