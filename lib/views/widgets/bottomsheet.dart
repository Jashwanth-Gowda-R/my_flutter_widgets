import 'package:flutter/material.dart';

class BottonSheetWidget extends StatelessWidget {
  const BottonSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom sheet'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              _showBottomSheet(context);
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
              'Press Me to see Bottom sheet!',
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

_showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Theme.of(context).primaryColor,
    elevation: 0,
    context: context,
    builder: (context) {
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('shani'),
            subtitle: Text('my god'),
          ),
          ListTile(
            title: Text('shani2'),
            subtitle: Text('my god'),
          ),
          ListTile(
            title: Text('shani3'),
            subtitle: Text('my god'),
          ),
          ListTile(
            title: Text('shani4'),
            subtitle: Text('my god'),
          ),
        ],
      );
    },
  );
}
