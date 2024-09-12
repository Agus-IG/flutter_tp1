//FUNCIÓN PARA DETERMINAR PALINDROMOS

//Crea una función que reciba una cadena y devuelva true si es un
// palíndromo (se lee igual de adelante hacia atrás) y false en caso contrario.
// Prueba la función con diferentes entradas.

import 'dart:io';

bool palindromo(String text){

  //Convertir el texto en minusculas y eliminar espacios
  String textClean = text.toLowerCase().replaceAll(RegExp(r'\s+'), '');

  //Invertir el texto
  String textInverted = textClean.split('').reversed.join('');

  //Comparar el texto original con el invertido
  return textClean == textInverted;
}

void main(){
  print('Ingresa un texto o una palabra');

  String? input; //Variable de entrada
  //Utilizamos verificación con bucle (do-while) para aseguranos de que el usuario no envie la entrada vacia
  do {
    input = stdin.readLineSync();

    if(input == null || input.isEmpty){
      print('Por favor ingrese un texto o una palabra:'); //Mensaje por si la variable sigue siendo null
    }
  } while (input == null || input.isEmpty); //Mientras el valor siga siendo null el bucle seguira activo

  //Realizamos una condicional para verificar si la palabra o texto es un palindromo o no
  if(palindromo(input)){
    print('El texto "$input" es un palindromo'); //En caso que lo sea se imprimira este mensaje
  } else {
    print('El texto "$input" no es un palindromo'); //En caso contrario se imprimira este
  }
}