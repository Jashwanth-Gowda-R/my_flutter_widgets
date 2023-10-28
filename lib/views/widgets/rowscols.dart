import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.amber,
        child: const MyCol(),
      ),
    );
  }
}

class MyCol extends StatelessWidget {
  const MyCol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
                color: Colors.black,
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
        Container(
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
                color: Colors.black,
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
        Container(
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
                color: Colors.black,
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
      ],
    );
  }
}

// wrap text widget for overflow - usecase
class MyWrap extends StatelessWidget {
  const MyWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
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
                color: Colors.black,
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
        Container(
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
                color: Colors.black,
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
        Container(
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
                color: Colors.black,
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
      ],
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
                color: Colors.black,
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
        Container(
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
                color: Colors.black,
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
        Container(
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
                color: Colors.black,
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
      ],
    );
  }
}
