import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

import 'custom_color.dart';

class CustomTheme {
  static NeumorphicThemeData neumorphicLight() => const NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      );

  static NeumorphicThemeData neumorphicDark() => const NeumorphicThemeData(
        baseColor: Color.fromARGB(255, 31, 31, 31),
        lightSource: LightSource.topLeft,
        depth: 2,
      );

  static ThemeData materialLight() => ThemeData.light().copyWith(
        iconTheme: IconThemeData(
          color: CustomColor.primaryColor,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: CustomColor.secondaryColor,
        ),
      );

  static ThemeData materialDark() => ThemeData.dark().copyWith(
        iconTheme: IconThemeData(
          color: CustomColor.secondaryColor,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: CustomColor.secondaryColor,
        ),
      );
}
