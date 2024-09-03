import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';


class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {

  final _formKey = GlobalKey<FormState>();


  final confNameController = TextEditingController();
  final speakerNameController = TextEditingController();
  String selectedConfType = 'talk';


   // ceci permet de liberer de l'espace
  @override
  void dispose() {

    super.dispose();

    confNameController.dispose();
    speakerNameController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                   decoration:  const InputDecoration(
                     labelText: "Mon conférence",
                     hintText: "Entrer  le nom de la conférence",
                     border: OutlineInputBorder(),
                   ),
                  validator: (value){
                     if (value == null || value.isEmpty){
                       return "Tu dois remplir ce champs";
                     }
                     return null;
                  },
                  controller: confNameController,
                 ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration:  const InputDecoration(
                    labelText: "Nom du speaker",
                    hintText: "Entrer  le nom du speaker",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "Tu dois remplir ce champs";
                    }
                    return null;
                  },
                  controller: speakerNameController,
                ),
              ),

              Container(
                  margin: const EdgeInsets.only(bottom: 10),
                child: DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'talk', child: Text("talk show")),
                      DropdownMenuItem(value: 'demo', child: Text("demo code")),
                      DropdownMenuItem(value: 'patner', child: Text("patner"))
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    value: selectedConfType,
                    onChanged: (value){
                      setState(() {
                        selectedConfType = value!;
                      });
                    }
                ),
              ),


              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                    onPressed: (){
                  if (_formKey.currentState!.validate()){
                    final confName = confNameController.text;
                    final speakerName = speakerNameController.text;

                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Envoie en cours...")
                        )
                    );
                    FocusScope.of(context).requestFocus(FocusNode());
                    
                    print("Ajout  de la conf $confName par le speaker   $speakerName");
                    print("Type de conférence $selectedConfType");
                  }
                },
                    child: const Text("envoyer"),
                ),

              )
            ],
          )
      ),
    );
  }
}

