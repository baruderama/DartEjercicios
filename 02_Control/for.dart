import 'dart:io';

main(List<String> args) {
  stdout.writeln('numero');
  int multiplicador = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 1; i <= 10; i++) {
    print('hola mundo: ${i * multiplicador}');
  }
}
