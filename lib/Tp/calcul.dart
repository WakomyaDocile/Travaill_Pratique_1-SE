import 'package:flutter/material.dart';

class calcul extends StatefulWidget {
  const calcul({Key? key}) : super(key: key);

  @override
  State<calcul> createState() => _calculState();

}

class _calculState extends State<calcul> {

  String signe = "+";
  TextEditingController txtNombre1= new TextEditingController();
  TextEditingController txtNombre2= new TextEditingController();
  TextEditingController txtReponse= new TextEditingController();

  void calcul(){
    double x = double.parse(txtNombre1.text);
    double y = double.parse(txtNombre2.text);
    double rep ;

    if(signe == "-"){
      rep = x-y;
    }else if(signe == "*"){
      rep = x*y;
    }else if(signe == "/"){
      rep = x/y;
    }else{
      rep = x+y;
    }

    txtReponse.text = rep.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATRICE'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          new TextField(
            controller: txtNombre1,
            decoration: InputDecoration(
              hintText: 'Entrez le premier nombre',
              labelText: 'Le premier nombre',
            ),
          ),
          TextField(
            controller: txtNombre2,
            decoration: InputDecoration(
              hintText: 'Entrez le deuxieme nombre',
              labelText: 'Le deuxieme nombre',
            ),
          ),

          DropdownButton(
            items: const [
              DropdownMenuItem(
                value: "-",
                child: Text("-"),
              ),
              DropdownMenuItem(
                value: "+",
                child: Text("+"),
              ),
              DropdownMenuItem(
                value: "/",
                child: Text("/"),
              ),
              DropdownMenuItem(
                value: "*",
                child: Text("*"),
              )
            ], 
            onChanged: (String? newValue) {
              setState(() {
                signe = newValue!;
              });
            },
          ),
          
          InkWell(
            onTap: (){
              calcul();
            },
            child: Material(
              child: Container(child: Text('Calculer'),),
            ),
          ),
          TextField(
            controller: txtReponse,
            decoration: InputDecoration(
              hintText: 'Ici la reponse',
              labelText: 'Ici la reponse',
            ),
          ),

          // List<String> _options =['\u002B Option', 'Option \u00D7', 'Option \u2215', 'Option \u2212'];
          //  String  _selectedOption = '\u002B Option';
          //  DropdownButton<String>(value: _selectedOption, onChanged: (String newValue)){
          //   setState(() {
          //     _selectedOption = newValue;
          //   });
          //  },

          //  items: _options.map((String option ){
          //   return DropdownMenuItem<String>(value : option, child: Text(option),
          //   );

          //  }).toList(),

          //  IconButton(onPressed: 3, icon: icon)
        ],
      ),
    );
  }
}
