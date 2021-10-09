class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('vehiculo apagado');
  }
}

// El extebd es para heredar propiedades y metodos de otra clase
class Carro extends Vehiculo {
  int kilometraje = 0;
}

main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.apagar();
  ford.apagar();
}
