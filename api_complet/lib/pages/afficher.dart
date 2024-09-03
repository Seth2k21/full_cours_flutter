/*
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
    get_post();
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


     class PostMethod {
         static get_all() async {
  // send request
  http.Response response = await http.get(
  Uri.parse("${Api().baseApi}${Api().afficheRoute}"),
  headers: {"Content-Type": "application/json"},
  );
  // verifying of request status
  if (response.statusCode == 200) {
  final data = json.decode(response.body);
  return data.map((e) => PostModel.fromMap(e)).toList();
  } else {
  return json.decode(response.body);
  }
  }

  }


}

*/