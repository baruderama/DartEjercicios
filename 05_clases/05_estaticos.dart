//metodos y propiedades estaticas son aquellas que puedo llamar en el main
// sin necesidad de instanciar una clase como en el ejemplo de abajo

class Herramientas {
  static List<String> listado = ['Martillo', 'Llave Inglesa', 'Desarmador'];

  static imprimirList() => listado.forEach(print);
}

main(List<String> args) {
  Herramientas.listado.add('tenazas');
  //Herramientas.listado.forEach(print);
  Herramientas.imprimirList();
}
