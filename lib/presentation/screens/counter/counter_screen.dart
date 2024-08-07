import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {



  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  // String clickName = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        appBar: AppBar(
          title: const Center(child: Text('Counter Screen')),
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        ),
        body: Center(
          child: Column(
            //centrar
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
               style: const TextStyle( fontSize: 160, fontWeight: FontWeight.bold  )
               ),
               Text('Click${clickCounter == 1 ? '' : 's'}', 
               style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            //para que renderize la pantalla
            setState(() {
              clickCounter ++;
              // if(clickCounter == 1){
              //   clickName = 'Click';
              // }else {
              //   clickName = 'Clickcs';
              // }
              
            });
            // clickCounter = clickCounter +1;
          },
          child: const Icon(Icons.plus_one) ,
          
        ),
      );
  }
}