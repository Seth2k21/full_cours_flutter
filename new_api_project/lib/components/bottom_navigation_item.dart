import 'package:api_complet/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/app_icons.dart';


class BottomNavigationItem extends StatelessWidget {
   final VoidCallback onPressed;
   final String icon;
   final Menus current;
   final Menus name;
  const BottomNavigationItem({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.current,
    required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
          colorFilter:
          ColorFilter.mode(
              current == name
                  ? Colors.black
                  : Colors.black.withOpacity(0.3),
              BlendMode.srcIn),
        ));

  }
}
