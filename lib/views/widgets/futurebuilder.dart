import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  late Future<int> dataFuture;
  @override
  void initState() {
    super.initState();
    dataFuture = getDataReal();
  }

  Future<int> getDataLocal() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );
    // return value
    return 7;

    // throw error
    // throw 'Failed to get data';
  }

  Future<int> getDataReal() async {
    final url = Uri.parse('https://www.randomnumberapi.com/api/v1.0/random');
    final response = await http.get(url, headers: {
      "Access-Control-Allow-Origin": "*",
      'Content-Type': 'application/json',
      'Accept': '*/*'
    });
    // var uri = Uri.https('www.randomnumberapi.com', 'api/v1.0/random');
    // var response = await http.get(uri);
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      int randomNumber = (body as List).first;
      return randomNumber;
    } else {
      throw 'Failed to get data';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder Widget'),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dataFuture = getDataReal();
          });
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
      body: Container(
        child: FutureBuilder(
          future: dataFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              return Center(
                child: Text(
                  '$data',
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              final error = snapshot.error;
              print(error.toString());
              return Center(
                child: Text(
                  '${error.toString()} errors',
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
