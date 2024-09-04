import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse("https://reqres.in/api/register"),
          body: {'email': email, "password": password});
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
      } else {
        print("Failed Account");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up Api "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Enter Email...",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 12)),
            ),
            const SizedBox(height: 22),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                  hintText: "Enter Password...",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 12)),
            ),
            const SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 40,
                decoration: const BoxDecoration(color: Colors.cyan),
                child: const Center(
                  child: Text("SignUp"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
