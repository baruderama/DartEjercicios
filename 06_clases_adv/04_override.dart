class Persona {
  String? nombre;
  int? edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);

  @override //Si se quiere sobreescribir un metodo de la clase padre se pone el override
  void imprimirNombre() {
    //con este super ejecuta la funcion del padre y luego
    //la linea siguiente
    super.imprimirNombre();
    print('cliente: $nombre, ($edad)');
  }
}

main(List<String> args) {
  final yo = new Cliente(33, 'fernando');

  yo.imprimirNombre();
}
