import 'dart:convert';

import 'package:api_complet/config/app_icons.dart';
import 'package:api_complet/config/app_routes.dart';
import 'package:api_complet/config/app_strings.dart';
import 'package:api_complet/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../config/app_strings.dart';

var username = '';
var password = '';
class LoginPage extends StatelessWidget {
  final loginRoute = 'https://my-json-server.typicode.com/typicode/demo/posts';

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:  const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 20),
          
                Text(
                  AppStrings.loginToContinue,
                   style: TextStyle(
                     color: Colors.grey[100],
                     fontSize: 16,
                   ),
                ),
                const Spacer(),
                    TextField(
                  onChanged: (value){
                    username = value;
                  },
                  decoration: InputDecoration(
                      hintText: AppStrings.username,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12),
                        ),
                      ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
          
                 const SizedBox(height: 22),
          
                 TextField(
                    onChanged: (value){
                    password = value;
          },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border:const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
          
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
          
                      },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                      child:  const Text('forgot password'),
                  ),
                ),
                const SizedBox(height: 32),

                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Colors.amber,
                        foregroundColor: Colors.black,
                        shape:  const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7),
                          )
                        )
                      ),
                      child:  const Text(AppStrings.login)
                  ),
                ),
          
               const Spacer(),
          
                const Text("or sign in with",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
          
                const SizedBox(height: 15),
          
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                       shape: const RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(50))
                       )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icGoogle,
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(width: 7),
                        const Text("Login with google"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
          
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50),
                        )
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icFacebook,
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(width: 7),
                        const Text("Login with facebook"),
                      ],
                    ),
                  ),
                ),
          
          
                Row(children: [
                  const Text(
                      "Don't have account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                      ),
                      child: const Text(
                        'sign up',
                        style: TextStyle(
                             decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
