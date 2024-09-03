import 'package:api_complet/components/post_item.dart';
import 'package:api_complet/components/toolbar.dart';
import 'package:api_complet/config/app_routes.dart';
import 'package:api_complet/styles/app_colors.dart';
import 'package:flutter/material.dart';


import '../styles/app_text.dart';

class HomePage extends StatelessWidget {
      HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mackUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
          title: 'Ma première page',
           actions: [
             IconButton(
                 onPressed: () {
                   Navigator.of(context).pushNamed(AppRoute.nearby);
                 },
                 icon: const Icon(Icons.location_on),
             )
           ],
      ),

      body: ListView.separated(
        itemBuilder: (context, index) {
       return PostItem(
       user: users[index],
     );
      },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 5);
        },

      ),
    );
    }

       mackUsersFromServer() {
      for(var i = 0; i < 200; i++){
      users.add('users number $i');
    }

}

}
