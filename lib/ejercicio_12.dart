class Estudiante {
  // Propiedades de la clase Estudiante
  String nombre;
  int edad;
  List<int> calificaciones;

  // Constructor
  Estudiante(this.nombre, this.edad, this.calificaciones);

  // Método para calcular el promedio de calificaciones
  double promedioCalificaciones() {
    if (calificaciones.isEmpty) {
      return 0.0; // Si no hay calificaciones, el promedio es 0
    }
    int suma = calificaciones.reduce((a, b) => a + b);
    return suma / calificaciones.length;
  }
}

// Función para obtener los nombres de los estudiantes con un promedio mayor a 6
List<String> estudiantesConPromedioMayorASeis(List<Estudiante> estudiantes) {
  return estudiantes
      .where((estudiante) => estudiante.promedioCalificaciones() > 6)
      .map((estudiante) => estudiante.nombre)
      .toList();
}

void main() {
  // Crear una lista de objetos Estudiante
  List<Estudiante> estudiantes = [
    Estudiante('Juan', 18, [7, 8, 9]),
    Estudiante('Ana', 19, [5, 6, 4]),
    Estudiante('Carlos', 20, [10, 9, 8]),
    Estudiante('María', 21, [6, 7, 8]),
    Estudiante('Lucía', 22, [4, 5, 6])
  ];

  // Obtener los nombres de los estudiantes con un promedio mayor a 6
  List<String> estudiantesAprobados = estudiantesConPromedioMayorASeis(estudiantes);

  // Imprimir los nombres de los estudiantes que cumplen con la condición
  print('Estudiantes con promedio mayor a 6:');
  for (String nombre in estudiantesAprobados) {
    print(nombre);
  }
}
