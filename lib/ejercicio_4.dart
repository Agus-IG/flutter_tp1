//SUMATORIA DE NUMEROS

// Crea un programa que pida al usuario un número y luego sume todos los
// números desde 1 hasta el número proporcionado utilizando un bucle for

import 'dart:io';

void main(){
  //Solicitamos el valor
  print('Ingrese un número entero');

  String? input; //Variable de entrada

  //Utilizamos verificación con bucle (do-while) para aseguranos de que el usuario no envie la entrada vacia
  do {
    input = stdin.readLineSync();

    if(input == null || input.isEmpty){
      print('Por favor ingrese un valor entero'); //Mensaje por si la variable sigue siendo null
    }
  } while (input == null || input.isEmpty); //Mientras el valor siga siendo null el bucle seguira activo

  int num = int.parse(input); //Convertimos el valor ingreado en un numero entero
  int sum = 0;

  //Creamos un bucle que girara la misma cantidad de veces que el valor ingresado
  for (var i = 1; i <= num; i++){
    sum = sum + i; //Sumamos el numero que ira incrementando con una variable para conseguir el resultado deseado
  }

  print('Total: $sum'); //Imprimimos el total de la suma por consola
}