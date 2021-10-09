///Los mixins estan hechos para tranferirle sus metodos y propiedades
///a otras clases no se puede instanciar ni puede tener constructores

mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy ::: $texto');
  }
}

class Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger, Logger2 {
  String? nombre;

  Astro() {
    imprimir('--- Init del astro---');
  }

  void existo() {
    imprimir('-- soy un ser celestial---');
  }
}

class Asteroide extends Astro with Logger2 {
  String? nombre;
  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main(List<String> args) {
  final seres = new Asteroide('Seres');
}
