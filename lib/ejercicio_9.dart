import 'dart:io'; // Necesario para leer la entrada del usuario

void main() {
  List<String> tareas = []; // Lista para almacenar tareas
  bool continuar = true;

  while (continuar) {
    print('\n--- Lista de Tareas ---');
    print('1. Ver tareas pendientes');
    print('2. Agregar nueva tarea');
    print('3. Marcar tarea como completada');
    print('4. Salir');
    stdout.write('Selecciona una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        verTareas(tareas);
        break;
      case '2':
        agregarTarea(tareas);
        break;
      case '3':
        marcarCompletada(tareas);
        break;
      case '4':
        continuar = false;
        print('Saliendo de la aplicación...');
        break;
      default:
        print('Opción no válida. Por favor, selecciona una opción del 1 al 4.');
    }
  }
}

void verTareas(List<String> tareas) {
  if (tareas.isEmpty) {
    print('No hay tareas pendientes.');
  } else {
    print('\nTareas pendientes:');
    for (int i = 0; i < tareas.length; i++) {
      print('${i + 1}. ${tareas[i]}');
    }
  }
}

void agregarTarea(List<String> tareas) {
  stdout.write('Ingresa la nueva tarea: ');
  String? nuevaTarea = stdin.readLineSync();
  if (nuevaTarea != null && nuevaTarea.isNotEmpty) {
    tareas.add(nuevaTarea);
    print('Tarea "$nuevaTarea" agregada a la lista.');
  } else {
    print('No se ha ingresado ninguna tarea.');
  }
}

void marcarCompletada(List<String> tareas) {
  if (tareas.isEmpty) {
    print('No hay tareas para completar.');
    return;
  }

  verTareas(tareas);
  stdout.write('Selecciona el número de la tarea completada: ');
  String? entrada = stdin.readLineSync();
  int? indice = int.tryParse(entrada ?? '');

  if (indice != null && indice > 0 && indice <= tareas.length) {
    String tareaCompletada = tareas.removeAt(indice - 1);
    print('Tarea "$tareaCompletada" marcada como completada.');
  } else {
    print('Número de tarea no válido.');
  }
}
