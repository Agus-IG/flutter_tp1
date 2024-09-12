import 'dart:io'; // Necesario para leer la entrada del usuario

void main() {
  Map<String, String> agenda = {}; // Mapa para almacenar los contactos
  bool continuar = true;

  while (continuar) {
    print('\n--- Agenda de Contactos ---');
    print('1. Ver todos los contactos');
    print('2. Agregar nuevo contacto');
    print('3. Eliminar contacto');
    print('4. Buscar contacto');
    print('5. Salir');
    stdout.write('Selecciona una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        verContactos(agenda);
        break;
      case '2':
        agregarContacto(agenda);
        break;
      case '3':
        eliminarContacto(agenda);
        break;
      case '4':
        buscarContacto(agenda);
        break;
      case '5':
        continuar = false;
        print('Saliendo de la agenda...');
        break;
      default:
        print('Opción no válida. Por favor, selecciona una opción del 1 al 5.');
    }
  }
}

void verContactos(Map<String, String> agenda) {
  if (agenda.isEmpty) {
    print('No hay contactos en la agenda.');
  } else {
    print('\nContactos en la agenda:');
    agenda.forEach((nombre, numero) {
      print('$nombre: $numero');
    });
  }
}

void agregarContacto(Map<String, String> agenda) {
  stdout.write('Ingresa el nombre del contacto: ');
  String? nombre = stdin.readLineSync();
  stdout.write('Ingresa el número de teléfono: ');
  String? numero = stdin.readLineSync();

  if (nombre != null && numero != null && nombre.isNotEmpty && numero.isNotEmpty) {
    agenda[nombre] = numero;
    print('Contacto "$nombre" agregado con el número $numero.');
  } else {
    print('Nombre o número no válido.');
  }
}

void eliminarContacto(Map<String, String> agenda) {
  stdout.write('Ingresa el nombre del contacto a eliminar: ');
  String? nombre = stdin.readLineSync();

  if (nombre != null && agenda.containsKey(nombre)) {
    agenda.remove(nombre);
    print('Contacto "$nombre" eliminado de la agenda.');
  } else {
    print('No se encontró el contacto con nombre "$nombre".');
  }
}

void buscarContacto(Map<String, String> agenda) {
  stdout.write('Ingresa el nombre del contacto a buscar: ');
  String? nombre = stdin.readLineSync();

  if (nombre != null && agenda.containsKey(nombre)) {
    print('Contacto encontrado: $nombre: ${agenda[nombre]}');
  } else {
    print('No se encontró el contacto con nombre "$nombre".');
  }
}
