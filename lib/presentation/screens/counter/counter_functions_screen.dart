import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  // String clickName = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),
          // leading izquierda/principal
          //Lista de widgets a las derecha
          // actions: [
          //   IconButton(
          //   icon: const Icon(Icons.refresh_rounded),
          //   onPressed: () { 
          //     setState(() {
          //       clickCounter=0;
          //     });
          //    },),
          // ],
          backgroundColor: const Color.fromARGB(255, 255, 123, 123),
        ),
        body: Center(
          
          child: Column(
            //centrar
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
               style: const TextStyle( fontSize: 160, fontWeight: FontWeight.bold )
               ),
               
               Text('Click${clickCounter == 1 ? '' : 's'}', 
               style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        
        //botones
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: (){
                //mostrar en pantalla
                setState(() {
                  clickCounter = 0;
                });
              },
              ),
            const SizedBox(height: 10),

            CustomButton(
              icon: Icons.plus_one_rounded,
              onPressed: (){
                setState(() {
                  clickCounter++;
                });
              },
              ),

            const SizedBox(height: 10),

            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if(clickCounter == 0) return;
                  clickCounter--;
                });
              },
              ),
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final  VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //boton circular
      shape: const StadiumBorder(),
      backgroundColor:const Color.fromARGB(255, 240, 155, 155),
      elevation: 6,
      foregroundColor: Colors.black38,
      enableFeedback: true,
      onPressed:onPressed,
      child: Icon(icon),
      
    );
  }
}