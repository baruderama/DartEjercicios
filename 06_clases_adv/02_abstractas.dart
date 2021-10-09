// Las clases abstractas sirven como cascaron de otras o para heredarles los
//metodos y propiedades a otras clases pero de esta clase no se puede instanciar
//un objeto
abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('vehiculo apagado');
  }

  bool revisarMotor();
}

//
class Carro extends Vehiculo {
  int kilometraje = 0;

  //Si algun metodo en clase abstracta no esta definido se sobreescribe en
  // las clases que extiendan de la abstracta como en este ejemplo
  @override
  bool revisarMotor() {
    // TODO: implement revisarMotor
    print('Motor ok');
    return true;
  }
}

main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}
