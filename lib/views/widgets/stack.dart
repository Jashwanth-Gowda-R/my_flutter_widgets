import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack widgets'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img/Jashwant-44.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 70,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class ColorStackWidget extends StatelessWidget {
  const ColorStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Stack(
          children: [
            Positioned(
              top: 40,
              right: 70,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.amber,
              ),
            ),
            Positioned(
              left: 20,
              bottom: 30,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
            Positioned(
              right: 70,
              bottom: 10,
              child: Container(
                width: 25,
                height: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
