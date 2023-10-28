import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/container_sized.dart';
import 'package:flutter_widgets/views/widgets/rowscols.dart';

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
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const RowsCols(),
    );
  }
}
