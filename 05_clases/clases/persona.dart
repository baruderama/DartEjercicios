///Cuando una propiedad se marca privada es asi: _edad
///Las propiedades privadas es para controllar de manera estricta que se
///hacen con las mismas

class Persona {
  //Campos o porpiedades
  String? nombre;
  int? edad;
  String? _bio = 'hola esta bio es privada';

  //get y sets
  //
  // String get bio {
  //   return _bio ?? 'no hay valor';
  // }
  String get bio => _bio ?? 'no hay nada';

  //set bio(String texto){
  //_bio= texto
  //}
  set bio(String texto) => _bio = texto;

  //Constructores
  // Persona(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  // }
  Persona({this.edad = 0, this.nombre = 'sin nombre'});

  ///Constructor con nombre

  Persona.persona30(this.nombre) {
    this.edad = 30;
  }
  Persona.persona40(String nombre) {
    this.edad = 40;
    this.nombre = nombre;
  }

  Persona.personaBio(this._bio) {
    this.edad = 10;
    this.nombre = 'sebs';
  }

  //metodos

  @override // con esto decidimos como se representan como string la instancia de la clase
  String toString() {
    return '$nombre $_bio $edad';
  }
}
