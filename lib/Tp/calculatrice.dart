import 'package:flutter/material.dart';

class calculatrice extends StatefulWidget {
  //const calculatrice({ Key? key }) : super(key: key);

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
  State<calculatrice> createState() => _calculatriceState();
}

class _calculatriceState extends State<calculatrice> {
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