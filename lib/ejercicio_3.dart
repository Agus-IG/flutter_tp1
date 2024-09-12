//NUMEROS PARES O IMPARES

//Escribe un programa que solicite un número al usuario y determine si es
// par o impar utilizando una estructura if.

import 'dart:io';

void main(){
  //Solicitamos el valor
  print('Ingrese un número entero');
  String? input = stdin.readLineSync();
  int num = int.parse(input!);

  final div = num % 2; //Realizamos la division al valor ingresado para determinar el resto de la división

  //Realizamos una condicional para saber si el resto de la division es igual o diferente de 0
  if(div == 0){
    print('Es par'); //Si el resto de la division es igual a 0 se imprimira que el número es par
  }else{
    print('Es impar'); //En caso contrario se imprimira que es impar
  }
}