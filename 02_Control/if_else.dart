import 'dart:io';

main(List<String> args) {
  stdout.writeln('Cual es tu edad?');
  int edad = int.parse(stdin.readLineSync() ?? '0');
  if (edad >= 21) {
    stdout.writeln('Ciudadanos');
  } else if (edad < 18) {
    stdout.writeln('Eres menor de edad');
  } else {
    stdout.writeln('Eres mayor de edad');
  }

  /*

  */
}
