import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // Méthode pour déconnecter l'utilisateur
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout), // Utilisation de l'icône de déconnexion
          )
        ],
      ),
      drawer: const Drawer(),
      body: Center(
          child: Text("Page d'accueil: ${user.email!}",
                   style: const TextStyle(fontSize: 20),)), // Texte en français
    );
  }
}
