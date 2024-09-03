import 'package:api_complet/pages/afficher.dart';
import 'package:api_complet/pages/ajout.dart';

import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/nearby_page.dart';
import '../pages/profil_page.dart';

class AppRoute {

  static final pages = {
  login:(context) => LoginPage(),
  home:(context) =>  HomePage(),
  main: (context) => const MainPage(),
  editProfile: (context) =>  EditProfilePage(),
   nearby:  (context) =>  const NearbyPage(),
   ajout:  (context) =>  const Ajout(),
   //afficher:  (context) =>  const Afficher(),
  };


  static const login = '/';
  static const home= '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const ajout = '/ajout';
  static const afficher = '/afficher';

}