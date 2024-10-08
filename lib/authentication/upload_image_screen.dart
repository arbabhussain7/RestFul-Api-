import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({super.key});

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;
  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print("No Image Selected");
    }
  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });
    var stream = http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var request = http.MultipartRequest('POST', uri);
    request.fields['title'] = "Static title";
    var multiport = http.MultipartFile('image', stream, length);
    request.files.add(multiport);
    var response = await request.send();
    if (response.statusCode == 200) {
      setState(() {
        showSpinner = false;
      });
      print("image upload ");
    } else {
      setState(() {
        showSpinner = false;
      });
      print("Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Image Upload"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  getImage();
                },
                child: Container(
                    width: double.infinity,
                    height: 155,
                    decoration: BoxDecoration(border: Border.all()),
                    child: image == null
                        ? const Center(
                            child: Text(
                            "Pick Image.",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ))
                        : Container(
                            child: Image.file(
                              File(image!.path).absolute,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          )),
              ),
              const SizedBox(
                height: 55,
              ),
              GestureDetector(
                onTap: () {
                  uploadImage();
                },
                child: Container(
                  height: 50,
                  color: Colors.cyan,
                  child: const Center(
                    child: Text("Upload"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
