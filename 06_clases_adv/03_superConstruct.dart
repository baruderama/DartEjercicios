class Persona {
  String? nombre;
  int? edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('nombre: $nombre, Edad: $edad');
}

//El super se utliza para instanciar la clase de la que se extiende antes de la misma
// en este caso cliente y asi poder utilizar todos sus metodos sin necesidad
// de ser abstracta la clase padre en este caso persona
class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);
}

main(List<String> args) {
  final yo = new Cliente(33, 'fernando');

  yo.imprimirNombre();
}
