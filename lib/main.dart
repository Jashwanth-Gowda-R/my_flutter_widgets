import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/UI/cloning_1/day19.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.greenAccent,
        useMaterial3: true,
      ),
      home: const Day19(),
    );
  }
}
