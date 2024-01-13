import 'package:flutter/material.dart';

class Personne extends StatefulWidget {
  const Personne({Key? key}) : super(key: key);

  @override
  State<Personne> createState() => _PersonneState();
}

class _PersonneState extends State<Personne> {
  @override
  Widget build(BuildContext context) {
    // var add;
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
          // FlatButton(
          //   onPressed: () {},
          //   child: Text("Enregistrer"),
          // )
          InkWell(
            onTap: (){},
            child: Material(
              child: Container(child: Text('Enregistrer'),),
            ),
          )
        ],
      ),
    );
  }
}
