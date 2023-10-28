import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container and Sized Box'),
        backgroundColor: Colors.red,
      ),
      body: const MyContainer(),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 150,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.blue,
          // shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(30),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              spreadRadius: 10,
              color: Colors.amber,
            ),
          ],
        ),
        // color: Colors.blue,
        child: const Center(
          child: Text(
            'Hello shani',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class Sizedbox extends StatelessWidget {
  const Sizedbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 50,
        width: 100,
        child: Text('Hello shani'),
      ),
    );
  }
}
