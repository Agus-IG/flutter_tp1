//FUNCIÓN DE AREA DE UN CIRCULO

// Define una función que calcule el área de un círculo dada su radio. Usa la
// fórmula π×radio2\pi \times \text{radio}^2π×radio2. Pide al usuario el radio
// y muestra el área calculada.

import 'dart:io';
import 'dart:math';

//Funcion encargada de calcular el area del circulo
double area (int num){
  return (pi*2)*num;
}

void main(){
  //Solicitamos el valor
  print('Ingrese el radio:');

  String? input; //Variable de entrada
  //Utilizamos verificación con bucle (do-while) para aseguranos de que el usuario no envie la entrada vacia
  do {
    input = stdin.readLineSync();

    if(input == null || input.isEmpty){
      print('Por favor ingrese el radio:'); //Mensaje por si la variable sigue siendo null
    }
  } while (input == null || input.isEmpty); //Mientras el valor siga siendo null el bucle seguira activo

  int radio = int.parse(input); //Convertimos el valor ingreado en un numero entero

  double resultado = area(radio); // Almacenamos el resultado del calculo del area en una variable

  print('El area de un circulo es: $resultado'); //Mostramos el resultado por consola
}