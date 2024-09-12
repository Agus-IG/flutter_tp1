// Función recursiva para calcular el factorial de un número
int factorial(int n) {
  if (n <= 1) {
    return 1; // Caso base: el factorial de 0 o 1 es 1
  } else {
    return n * factorial(n - 1); // Llamada recursiva
  }
}

// Función recursiva para calcular el número n-ésimo en la serie de Fibonacci
int fibonacci(int n) {
  if (n == 0) {
    return 0; // Caso base: F(0) = 0
  } else if (n == 1) {
    return 1; // Caso base: F(1) = 1
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2); // Llamada recursiva
  }
}

// Función recursiva para realizar una búsqueda binaria
int busquedaBinaria(List<int> lista, int valor, int inicio, int fin) {
  if (inicio > fin) {
    return -1; // Caso base: no se encuentra el valor
  }

  int medio = (inicio + fin) ~/ 2; // Calcular el índice del medio

  if (lista[medio] == valor) {
    return medio; // Caso base: el valor se encuentra en el índice medio
  } else if (lista[medio] > valor) {
    return busquedaBinaria(lista, valor, inicio, medio - 1); // Buscar en la mitad izquierda
  } else {
    return busquedaBinaria(lista, valor, medio + 1, fin); // Buscar en la mitad derecha
  }
}

void main() {
  // Pruebas de la función factorial
  print('Factorial de 5: ${factorial(5)}'); // 120
  print('Factorial de 7: ${factorial(7)}'); // 5040
  print('Factorial de 0: ${factorial(0)}'); // 1

  // Pruebas de la función Fibonacci
  print('Primeros 10 números de la serie de Fibonacci:');
  for (int i = 0; i < 10; i++) {
    print('F($i) = ${fibonacci(i)}');
  }

  // Pruebas de la función de búsqueda binaria
  List<int> listaOrdenada = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  int valorABuscar = 7;

  // Realizar la búsqueda binaria
  int resultado = busquedaBinaria(listaOrdenada, valorABuscar, 0, listaOrdenada.length - 1);

  if (resultado != -1) {
    print('Valor $valorABuscar encontrado en el índice $resultado.');
  } else {
    print('Valor $valorABuscar no encontrado en la lista.');
  }
}
