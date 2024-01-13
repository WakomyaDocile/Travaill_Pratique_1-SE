import 'package:flutter/material.dart';

class personne extends StatefulWidget {
  const personne({Key? key}) : super(key: key);

  @override
  State<personne> createState() => _personneState();
}

class _personneState extends State<personne> {
  @override
  Widget build(BuildContext context) {
    var add;
    return Scaffold(
      appBar: AppBar(
        title: Text('IDENTIFICATION'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          new TextField(
              controller: null,
              enabled: true,
              decoration: InputDecoration(
                hintText: 'Entrez votre nom',
                labelText: 'Votre nom',
              )),
          new TextField(
              controller: null,
              enabled: true,
              decoration: InputDecoration(
                hintText: 'Entrez votre Post nom',
                labelText: 'Votre Post nom',
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            tooltip: "Enregistrer",
          ),
          SizedBox(
            width: 30,
            height: 10,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Enregistrer"),
          )
        ],
      ),
    );
  }
}
