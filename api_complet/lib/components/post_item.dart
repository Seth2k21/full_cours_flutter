import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user ;

  const PostItem({
    super.key,
    required this.user
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/joyce.jpeg',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 5),
                  Text(
                   user,
                  style: AppText.subtitle3
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset('assets/temp/joyce.jpeg'),
          const Text('Bien sûr ! Je peux écrire en français. Que souhaites-tu que je rédige pour toi ?', style: AppText.subtitle3),
        ],
      ),
    );
  }
}
