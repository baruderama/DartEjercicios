///Estas clases con propiedades finales se utilizan cuando no nos interesa
///que las propiedades se modifiquen despues de que son establecidas al
///crear la instancia

class Cuadrado {
  final int lado;
  final int area;

  // Cuadrado(int lado, int area) {
  //   this.area = area;
  //   this.lado = lado;
  // }

  // Cuadrado(this.lado, this.area);

  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

main(List<String> args) {
  final cuadra = new Cuadrado(10);
  print(cuadra.area);
}
