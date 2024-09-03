import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostRegisterScreen extends StatefulWidget {
  const PostRegisterScreen({super.key});

  @override
  State<PostRegisterScreen> createState() => _PostRegisterScreenState();
}

class _PostRegisterScreenState extends State<PostRegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confpasswordController = TextEditingController();
  registerUser( String email, String password)async{
    Uri url= Uri.parse("https://reqres.in/api/register");
    var data = {
      "email":email,
      "password":password,
    };
    try{
      var response = await http.post(url,body: data);
      if(response.statusCode == 201) {
        var jsonData = jsonDecode(response.body);
        print(jsonData);
        print("Enrégistré avec succès");
      }
      else {
        var error = jsonDecode(response.body);
        print("Erreur d'enrégistrement: ${['error']}");
      }
    } catch  (e){
      print("Error:$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(" Register Post API"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
              hintText: "Email"
            ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password"
            ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: confpasswordController ,
              decoration: const InputDecoration(
                  hintText: "Confirm Password"
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                registerUser(
                    emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: const Center(
                child: Text("Register",
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                   ),),
              ),
            ),
            ),

          ],
        ),
      ),
    );
  }
}
