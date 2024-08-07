import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  //inicialización de la llave
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //quita etiqueta
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Hola mundo')),
      )
    );
  }
}