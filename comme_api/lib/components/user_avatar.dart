import 'package:flutter/cupertino.dart';


class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Image.asset(
        'assets/temp/girj.jpeg',
        width: size,
        height: size,
      ),
    );
  }
}
