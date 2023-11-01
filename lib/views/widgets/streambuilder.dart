import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  late Stream<int?> dataFuture;
  @override
  void initState() {
    super.initState();
    dataFuture = getDataLocal();
  }

  Stream<int?> getDataLocal() async* {
    await Future.delayed(const Duration(seconds: 4));
    // return value
    yield 4;

    await Future.delayed(const Duration(seconds: 4));
    // return value
    yield 3;
    await Future.delayed(const Duration(seconds: 4));
    // return value
    yield 2;
    await Future.delayed(const Duration(seconds: 4));
    // return value
    yield 1;

    // throw error
    // await Future.delayed(const Duration(seconds: 2));
    // throw 'Failed to get data';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Builder Widget'),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dataFuture = getDataLocal();
          });
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
      body: StreamBuilder<int?>(
        stream: dataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
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
                '${error.toString()} - errors',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            );
          } else {
            const Center(
              child: Text(
                'No Data',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            );
          }
          return const Center(
            child: Text(
              'No Data',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          );
        },
      ),
    );
  }
}
