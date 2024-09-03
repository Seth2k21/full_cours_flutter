import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostLogin extends StatefulWidget {
  const PostLogin({super.key});

  @override
  State<PostLogin> createState() => _PostLoginScreenState();
}

class _PostLoginScreenState extends State<PostLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  registerUser( String email, String password)async{
    Uri url= Uri.parse("https://reqres.in/api/login");
    var data = {
      "email":email,
      "password":password,
    };
    try{
      var response = await http.post(url,body: data);
      if(response.statusCode == 202) {
        var jsonData = jsonDecode(response.body);
        print(jsonData);
        print("connecter avec succès avec succès");
      }
      else {
        var error = jsonDecode(response.body);
        print("Erreur de connection: ${['error']}");
      }
    } catch  (e){
      print("Error:$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Login Post API"),
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
           const SizedBox(height: 25,),
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
                  child: Text("Login",
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
