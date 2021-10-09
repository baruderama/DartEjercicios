class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo; // Cuadrado base = altura, rectangulo base != altura

  /// El Factory no puede retornar una instancia creada por si sola
  /// solo retorna la creacion de una nueva instancia como en el ejemplo de
  /// abajo
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    // TODO: implement toString
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

main(List<String> args) {
  final figura = new Rectangulo(10, 15);
  print(figura);
}
