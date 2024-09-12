void main() {
  // Crear una lista de números enteros
  List<int> numeros = [24, 6, 9, 12, 15];

  // Recorrer la lista e imprimir cada número
  print('Números en la lista:');
  for (int numero in numeros) {
    print(numero);
  }

  // Calcular la suma de todos los números
  int suma = numeros.reduce((a, b) => a + b);
  print('La suma de todos los números es: $suma');

  // Encontrar el número mayor y el menor
  int numeroMayor = numeros.reduce((a, b) => a > b ? a : b);
  int numeroMenor = numeros.reduce((a, b) => a < b ? a : b);

  print('El número mayor es: $numeroMayor');
  print('El número menor es: $numeroMenor');

  // Crear una nueva lista con solo los números pares
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();

  // Usar map para crear una nueva lista con el doble de cada número
  List<int> numerosDobles = numeros.map((numero) => numero * 2).toList();

  // Mostrar las listas resultantes
  print('Lista original: $numeros');
  print('Lista de números pares: $numerosPares');
  print('Lista con el doble de cada número: $numerosDobles');
}
