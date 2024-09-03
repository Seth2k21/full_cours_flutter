import 'dart:convert';

import 'package:api_complet/config/app_icons.dart';
import 'package:api_complet/config/app_routes.dart';
import 'package:api_complet/config/app_strings.dart';
import 'package:api_complet/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';




class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  bool _isWithEmailPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Neumorphic(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
             child: _buildLoginForm(context),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Form(
      key: formKey,
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


                CustomInput(
                  label: 'Email or Username',
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required!';
                    }
                    return null;
                  },
                ),



                const SizedBox(height: 22),


                CustomInput(
                  label: 'Password',
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required!';
                    }
                    return null;
                  },
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
                  child: CustomButton(
                      onTap: () async {},
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
                  child: CustomButton(
                    onTap: () {},
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
                  child: CustomButton(
                    onTap: () {},
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
          );
  }
}
