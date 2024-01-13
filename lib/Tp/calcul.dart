import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class calcul extends StatefulWidget {
  const calcul({Key? key}) : super(key: key);

  @override
  State<calcul> createState() => _calculState();
}

class _calculState extends State<calcul> {
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
            controller: null,
            decoration: InputDecoration(
              hintText: 'Entrez le premier nombre',
              labelText: 'Le premier nombre',
            ),
          ),
          TextField(
            controller: null,
            decoration: InputDecoration(
              hintText: 'Entrez le deuxieme nombre',
              labelText: 'Le deuxieme nombre',
            ),
          ),
          DropdownButtonExample(),

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

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample();

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
