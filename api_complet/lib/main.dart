import 'package:api_complet/config/app_routes.dart';
import 'package:api_complet/pages/edit_profile_page.dart';
import 'package:api_complet/pages/home_page.dart';
import 'package:api_complet/pages/login_page.dart';
import 'package:api_complet/pages/main_page.dart';
import 'package:api_complet/pages/profil_page.dart';
import 'package:api_complet/styles/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext  context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'Urbanist',
          brightness: Brightness.dark),
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
    );
  }
}
