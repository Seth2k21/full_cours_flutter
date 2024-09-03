import 'package:api_complet/components/app_text_field.dart';
import 'package:api_complet/components/user_avatar.dart';
import 'package:api_complet/config/app_strings.dart';
import 'package:api_complet/styles/app_colors.dart';
import 'package:api_complet/styles/app_text.dart';
import 'package:flutter/material.dart';

import '../components/toolbar.dart';

enum Gender {none,male, female, other }


class EditProfilePage extends StatefulWidget {
   EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
   var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: 'Edit Profile'),

      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
             children: [
               Stack(
                 children: [
                   const UserAvatar(
                     size: 120,
                   ),
                   Positioned(
                       bottom: 10,
                       right: 0,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 16.0),
                         child: Container(
                           decoration: const BoxDecoration(
                             color: AppColors.primary,
                             borderRadius: BorderRadius.all(Radius.circular(5),
                             ),
                           ),
                             child: const Icon(
                                 size: 20,
                                 color: Colors.black,
                                 Icons.edit),
                         ),
                       ),
                   ),
                 ],
               ),
               const SizedBox(height: 60),
               const AppTextField(hint: AppStrings.firstName ),
               const SizedBox(height: 16),
               const AppTextField(hint: AppStrings.lastName),
               const SizedBox(height: 16),
               const AppTextField(hint: AppStrings.phoneNumber),
               const SizedBox(height: 16),
               const AppTextField(hint: AppStrings.location),
               const SizedBox(height: 16),
               const AppTextField(hint: AppStrings.birthday),

               const SizedBox(height: 16),

               Container(

                 decoration: BoxDecoration(
                  color: AppColors.fieledColor,
                   borderRadius: const BorderRadius.all(Radius.circular(12)),
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       padding: const EdgeInsets.only(left: 12),
                       child: Text(
                         AppStrings.gender,
                         style: AppText.body1.copyWith(
                           fontSize: 12
                         ),

                       ),
                     ),

                     Row(
                       children: [
                         Expanded(
                           child: RadioListTile(
                             title: const Text(AppStrings.male),
                             value: Gender.male,
                             visualDensity:  const VisualDensity(
                               horizontal: VisualDensity.minimumDensity,
                               vertical: VisualDensity.maximumDensity,
                             ),
                             contentPadding: EdgeInsets.zero,
                             groupValue: gender,
                             onChanged: (value) {
                               setState(() {
                                 gender = value as Gender;
                               });
                             },
                           ),
                         ),
                         Expanded(
                           child: RadioListTile(
                             title: const Text(AppStrings.female),
                             value: Gender.female,
                             visualDensity:  const VisualDensity(
                               horizontal: VisualDensity.minimumDensity,
                               vertical: VisualDensity.maximumDensity,
                             ),
                             contentPadding: EdgeInsets.zero,
                             groupValue: gender,
                             onChanged: (value) {
                               setState(() {
                                 gender = value as Gender;
                               });
                             },
                           ),
                         ),
                         Expanded(
                           child: RadioListTile(
                             title: const Text(AppStrings.other),
                             value: Gender.other,
                             visualDensity:  const VisualDensity(
                               horizontal: VisualDensity.minimumDensity,
                               vertical: VisualDensity.maximumDensity,
                             ),
                             contentPadding: EdgeInsets.zero,
                             groupValue: gender,
                             onChanged: (value) {
                               setState(() {
                                 gender = value as Gender;
                               });
                             },
                           ),
                         ),
                       ],
                     ),

                   ],
                 ),
               )

             ],
          ),
        ),
      ),
    );
  }
}
