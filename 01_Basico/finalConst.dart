main() {
  var a = 10;
  final double b = 10;
  const double c = 10;

  a = 20;
  c.floor();

  //el final se puede modificar a travez de metodos
  //el const es inmodificable para siempre
  final List<String> personas1 = ['juan', 'pedro', 'lola'];
  const List<String> personas2 = ['juan', 'pedro', 'lola'];
  List<String> personas3 = const ['juan', 'pedro', 'lola'];

  personas1.add('maria');
  //ESTA LINEA DA ERROR PORQUE LE CONST ES INMODIFICABLE personas2.add('mari');

  print(personas2);

  //El late es para inicializar variables despues de declararlas
  late final double x;
  x = 10;
}
