import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  var selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('drop down list'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 70,
              decoration: const BoxDecoration(color: Colors.white),
              // color: Colors.red,
              // width: MediaQuery.of(context).size.width,
              child: DropdownButton(
                icon: const Icon(Icons.arrow_circle_down_rounded),
                value: selectedValue,
                items: const [
                  'Orange',
                  'pineapple',
                  'mango',
                  'banana',
                ].map((val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Text(val),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectedValue = val!;
                  });
                },
                isExpanded: false,
                dropdownColor: Colors.grey,
                elevation: 0,
                // to remove underline
                underline: const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
