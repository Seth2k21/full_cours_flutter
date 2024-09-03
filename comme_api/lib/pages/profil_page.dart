import 'package:api_complet/components/user_avatar.dart';
import 'package:api_complet/config/app_routes.dart';
import 'package:flutter/material.dart';

import '../components/toolbar.dart';
import '../styles/app_text.dart';

enum ProfileMenu{
  edit,
  logout
}


class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value){
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoute.editProfile );
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
                  default:
              }
            },
              itemBuilder: (context){
                return[
                   const PopupMenuItem(
                    value: ProfileMenu.edit,
                    child:
                    Row(children: [
                    Icon(Icons.edit),
                    Text('edit'),
                  ],
                  ),
                  ),
                    const PopupMenuItem(
                     value: ProfileMenu.logout,
                     child:
                  Row(children: [
                    Icon(Icons.logout),
                    Text('logout'),
                  ],
                  ),
                  )
                ];
              },
          ),

        ],
      ),

    body: const Column(
      children: [
        UserAvatar(size: 90),
        SizedBox(height: 24),

        Text(
            "Joyce Kanté",
            style: AppText.header1,
        ),
        SizedBox(height: 8),

        Text(
            'Madahaser',
           style: AppText.subtitle3
        ),
        SizedBox(height: 24),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                    '472',
                  style: AppText.header2,
                ),
                Text('followers'),
              ],
            ),
            Column(
              children: [
                Text(
                  '119',
                  style: AppText.header2,
                ),
                Text('Posts'),
              ],
            ),

            Column(
              children: [
                Text(
                  '80',
                  style: AppText.header2,
                ),
                Text('Following'),
              ],
            ),
          ],
        ),
        Divider(thickness: 1, height: 24),
      ],
    ),
    );
  }
}
