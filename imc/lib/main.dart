import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(home: Home()
    )
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 13, 1, 42),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.refresh),
          onPressed: (){},)
        ],
      ),
      backgroundColor: const Color.fromARGB(42, 1, 215, 244),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.person_outlined, size: 120.0, color: Color.fromARGB(255, 0, 0, 0)),
          TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso (Kg)", 
              labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize:25.0)
            ),
          TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura (cm)", 
              labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize:25.0)
            ),
            Container(
              height: 50.0,
              child: TextButton(
                onPressed: (){},
                child: Text("Calcular IMC", style: TextStyle(color: Colors.white, fontSize:25.0),),
                // color: Colors.black,
              )
            )
        ],
        ),
    );
  }
}