import 'package:demoapi/Home/example_four.dart';
import 'package:demoapi/Home/example_three.dart';
import 'package:demoapi/Home/example_two.dart';
import 'package:demoapi/Home/home_screen.dart';
import 'package:demoapi/authentication/signup_screen.dart';
import 'package:demoapi/authentication/upload_image_screen.dart';
import 'package:flutter/material.dart';

class RootFile extends StatefulWidget {
  const RootFile({super.key});

  @override
  State<RootFile> createState() => _RootFileState();
}

class _RootFileState extends State<RootFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Api Get and Post "),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                    child: Text(
                  "Example One",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExampleTwo()),
                );
              },
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                    child: Text(
                  "Example Two",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExampleThree()),
                );
              },
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                    child: Text(
                  "Example Three",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExampleFour()),
                );
              },
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                    child: Text(
                  "Example Four",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.orange),
                child: Center(
                    child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UploadImageScreen()),
                );
              },
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Center(
                    child: Text(
                  "Upload Image ",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
              height: 66,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
