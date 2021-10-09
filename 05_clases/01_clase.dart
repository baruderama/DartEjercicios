import 'clases/persona.dart';

main(List<String> args) {
  Persona per = new Persona(edad: 33, nombre: 'Fernando');
  final persona2 = new Persona.personaBio('modificque la privada');
  //=con este truco se puede de una vez asignarvalores de manera rapida y corta
  // per
  //   ..nombre = 'Fernando'
  //   ..edad = 33;
  //..bio = 'colo'; // por ahor aes privado no se puede trabajr fuera de la clases

  //per.bio = 'cambie el valor';
  //print(per.bio);
  print(per.toString());
  print(persona2);
}
