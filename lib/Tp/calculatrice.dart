import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Calculatrice extends StatefulWidget {
  //const Calculatrice({ Key? key }) : super(key: key);

  TextEditingController txtNombre1= new TextEditingController();
  TextEditingController txtNombre2= new TextEditingController();
  TextEditingController txtReponse= new TextEditingController();

  void Addition(){

    int x = int.parse(txtNombre1.text);
    int y = int.parse(txtNombre2.text);

    int rep = x+y;

    txtReponse.text = rep.toString();
  }

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  @override
  Widget build(BuildContext context) {
    var txtNombre1;
    return  Scaffold(
      appBar: AppBar(
        title: Text('ADDITION'),
        backgroundColor: Colors.blue ,
      ),
      body: ListView(
        children: [
          new TextFormField(
            controller: txtNombre1,
            decoration: InputDecoration(
              hintText: "Entrez le premier nombre",
              labelText: 'le premier nombre'


            ),
          )
          
        ],
      ),
    );
  }
}