import 'dart:io';

main(List<String> args) {
  // imprime en la terminal o cmd en vez de la debug console
  stdout.writeln('Hola bebe');

  //leer informacion
  String nombre = stdin.readLineSync() ?? 'no hay valor';

  //De esta forma de abajo tambien se puede por el null safeti
  //String? nombre = stdin.readLineSync() ?? 'no viene valor';
  stdout.writeln('tu nombre es : $nombre');
}
