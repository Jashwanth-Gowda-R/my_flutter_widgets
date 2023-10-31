import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgPicker extends StatefulWidget {
  const ImgPicker({super.key});

  @override
  State<ImgPicker> createState() => _ImgPickerState();
}

class _ImgPickerState extends State<ImgPicker> {
  XFile? file;
  final ImagePicker _picker = ImagePicker();

  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('images'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.green.shade300,
              child: Center(
                child: file == null
                    ? const Text('img not picked')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
              },
              child: const Text('Pick img'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile> photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
              },
              child: const Text('Pick mulitple imgs'),
            ),
          ],
        ),
      ),
    );
  }
}
