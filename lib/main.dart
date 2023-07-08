import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Tp1 by Savia/taghi 115',
     debugShowCheckedModeBanner: false, 
      home: Scaffold(
    
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset('img1.png'), 

              Row(
                children: [
                  Radio(value: 'Ajouter', groupValue: null, onChanged: null),
                  Radio(value: 'Modifier', groupValue: 'Modifier', onChanged: null),
                  Radio(value: 'Supprimer', groupValue: null, onChanged: null),
                ],
              ),

              Column(
                children: [
                  TextFormField( decoration: const InputDecoration( border: UnderlineInputBorder(),
                             labelText: 'Nom ',),),
                 TextFormField( decoration: const InputDecoration( border: UnderlineInputBorder(),
                             labelText: 'Preom ',),),
                  TextFormField( decoration: const InputDecoration( border: UnderlineInputBorder(),
                             labelText: 'Adresse ',),),
                ],
              ),

              Row(
                children: [
                  Column(
                    children: [
                       Text('Baccaloreat'),
                      Checkbox(value: true, onChanged: null),
                       Text('Bts'),
                      Checkbox(value: false, onChanged: null),
                       Text('Lisence '),
                      Checkbox(value: true, onChanged: null),
                       Text('Master'),
                      Checkbox(value: false, onChanged: null),
                       Text('Doctorat'),
                      Checkbox(value: false, onChanged: null),
                    ],
                  ),
                SizedBox(width: 16.0),
                 Column(
                   children: [
                  ElevatedButton.icon(
                  onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        icon: Icon(Icons.check),
                        label: Text('Valider', style: TextStyle(color: Colors.white)),
                  ),
                   Text('Résultat'),
                ],
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}