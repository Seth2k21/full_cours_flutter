import 'package:api_complet/styles/app_text.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';


class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:AppColors.background,
      title: Text(
          title,
        style: AppText.header1,
           ),
      centerTitle: false,
      actions: actions,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
