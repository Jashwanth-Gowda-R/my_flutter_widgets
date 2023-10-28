import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 250,
          child: ElevatedButton(
            onPressed: () {
              var snackBar = SnackBar(
                content: const Text('Hi this is jashwanth'),
                backgroundColor: Colors.amber,
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
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
              'Press Me to see SnackBar!',
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
