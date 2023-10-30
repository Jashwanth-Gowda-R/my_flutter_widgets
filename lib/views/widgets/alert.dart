import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 250,
          child: ElevatedButton(
            onPressed: () {
              _showDialog(context);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.red,
              ),
            ),
            child: const Text(
              'Press Me to see Alert Dialog!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.black,
        title: const Text('hello shani'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text('hello shani'),
              Text('hello shani'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('ok'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('cancel'),
          ),
        ],
      );
    },
  );
}
