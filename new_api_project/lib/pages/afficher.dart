import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Afficher extends StatefulWidget {
  const Afficher({super.key});

  @override
  State<Afficher> createState() => _AfficherState();
}

class _AfficherState extends State<Afficher> {
  List<dynamic>  postList = [];
  bool loading = true;
  String error = "";


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post',),),

      body: loading == true ? Center(child: CircularProgressIndicator(),) : error != "" ? Center(
        child: Text(error),
      ) : ListView.builder(
        itemCount: postList.length,
          itemBuilder: (context, index) {
            return Text(postList[index] ?? "No data");
          },
      ),
    );
  }




}

