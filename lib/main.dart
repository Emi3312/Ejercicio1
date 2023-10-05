// Importa el paquete 'flutter/material.dart', que contiene los widgets y las herramientas necesarias para crear aplicaciones Flutter.
import 'package:flutter/material.dart';

// Define una clase llamada 'Counter' que extiende StatefulWidget.
class Counter extends StatefulWidget {
  // Sobrescribe el método 'createState' para crear una instancia de '_CounterState' cuando se llama a 'Counter()'.
  @override
  State<Counter> createState() => _CounterState();
}

// Define una clase privada '_CounterState' que extiende 'State<Counter>'.
class _CounterState extends State<Counter> {
  // Declara una variable 'counter' para mantener el estado del contador, inicializada en 0.
  int counter = 0;

  // Define una función 'incrementCounter' que aumenta el valor de 'counter' y redibuja el widget cuando se llama mediante 'setState'.
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // Sobrescribe el método 'build' para construir y retornar la interfaz de usuario.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'), // Establece el título de la barra de aplicación.
      ),
      body: Center(
        child: Text(
          'Counter: $counter', // Muestra el valor de 'counter' en el centro de la pantalla.
          style: TextStyle(fontSize: 20), // Establece el estilo de fuente del texto.
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter, // Asocia la función 'incrementCounter' al botón flotante.
        tooltip: 'Increment', // Muestra una descripción emergente cuando se mantiene presionado el botón.
        child: Icon(Icons.add), // Muestra un ícono de suma en el botón flotante.
      ),
    );
  }
}

// La función 'main' es el punto de entrada de la aplicación.
void main() {
  // Ejecuta la aplicación Flutter utilizando MaterialApp y establece 'Counter' como la página de inicio.
  runApp(MaterialApp(
    home: Counter(),
  ));
}
