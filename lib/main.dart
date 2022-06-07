import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 // var selected="One";
  var selected=1;
//  final dropdownlist=<String>["One","Two","Three","Four"];

  final dropdownlist=<int>[1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),


     body: Center(child: DropdownButton(
       value: selected.toInt(),
       icon: Icon(Icons.arrow_downward),
       iconSize: 30,
       underline: Container(
         decoration: BoxDecoration(
           border: Border(bottom: BorderSide(color: Colors.red))
         ),
       ),
       style: TextStyle(color: Colors.blue),
       items: dropdownlist
           .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
           .toList(),
       onChanged: (int? value) {
         if(value!=null)
           {
             setState(() {
               selected=value;
             });


           }

       },)),

    );
  }
}



