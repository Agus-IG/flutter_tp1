//CLASE PERSONA

//Define una clase Persona con propiedades nombre y edad. Crea un
// constructor para inicializar estas propiedades. Añade un método
// mostrarDatos que imprima los datos de la persona.

class Persona {
  //Atributos
  String nombre;
  int edad;

  //Constructor
  Persona(this.nombre, this.edad);

  //Metodos
  void mostrarDatos(){
    print('Nombre: $nombre | Edad: $edad años'); //Mensaje por consola
  }
}

void main(){
  //Crear la instancia de la clase persona
  Persona persona = Persona('Jeremias', 22);

  //Llamar al metodo de la clase
  persona.mostrarDatos();
}