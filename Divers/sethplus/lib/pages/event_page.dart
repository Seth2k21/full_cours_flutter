import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}


class _EventPageState extends State<EventPage> {

    final events = [
      {
        "speaker": "Kambel Bior",
        "date": "13H à  13h30",
        "subject": "Le code Legacy",
        "avatar": "conf1"
      },
      {
        "speaker": "Abel Homess",
        "date": "13H 30 à  14h",
        "subject": "C'est la vie",
        "avatar": "conf2"
      },
      {
        "speaker": "Atorro Roman",
        "date": "14H à  14h30",
        "subject": "La beauté de la nature",
        "avatar": "conf3"
      },
    ];

  @override
  Widget build(BuildContext context) {
    return   Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index){
            final event = events[index];
            final avatar = event['avatar'];
            final speaker = event['speaker'];
            final date = event['date'];
            final subject = event['subject'];

            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$avatar.jpg"),
                title: Text('$speaker ($date)'),
                subtitle: Text('$subject'),
                trailing: Icon(Icons.more_vert),
              ),
            );

          },

        )
    );
  }
}
