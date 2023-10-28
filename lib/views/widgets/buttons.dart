import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.amber,
                ),
                elevation: MaterialStateProperty.all(10),
                overlayColor: MaterialStateProperty.all(
                  Colors.lightGreen,
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(25),
                ),
              ),
              child: const Text(
                'Press Me!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
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
                  'Press Me!',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
