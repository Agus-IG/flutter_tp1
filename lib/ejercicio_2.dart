//OPERACIONES CON VARIABLES

//Escribe un programa que solicite al usuario dos números enteros. Realiza
// operaciones de suma, resta, multiplicación y división entre estos números
// e imprime los resultados.

import 'dart:io';

void main(){
  //Solicitar primer valor
  print('Ingrese el primer valor');
  String? input1 = stdin.readLineSync(); //Lee la entrada como cadena
  int num1 = int.parse(input1!); //Convierte la cadena en entero

  //Solicitar segundo valor
  print('Ingrese el segundo valor');
  String? input2 = stdin.readLineSync();
  int num2 = int.parse(input2!);

  int suma = num1 + num2; //Suma de los dos valores
  int resta = num1 - num2; //Resta de los dos valores
  int mult = num1 * num2; //Multiplicación de los dos valores
  double div = num1 / num2; //División de los dos valores

  //Imprimos todos los resultados por consola
  print('Suma: $suma');
  print('Resta: $resta');
  print('Multiplicación: $mult');
  print('Division: $div');
}