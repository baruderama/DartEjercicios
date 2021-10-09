import 'dart:io';

///El async y el await es para sincropnizar tareas asincronas y esperar que
///todas las acciones se hagan de forma sincronizada
///

main(List<String> args) async {
  //print(Directory.current.path); //

  String path =
      Directory.current.path + '\\04_tiposNoComun\\assets\\personas.txt';
  //leerArchivo(path).then(print);

  String texto = await leerArchivo(path);
  print(texto);
  print('fin main');
}

leerArchivo(String path) async {
  File file = new File(path);

  return file.readAsString();
}
