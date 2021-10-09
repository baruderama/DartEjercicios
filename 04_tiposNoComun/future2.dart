import 'dart:io';

main(List<String> args) {
  File file = new File(
      Directory.current.path + '\\04_tiposNoComun\\assets\\personas.txt');
  //print(Directory.current.path); //

  Future<String> f =
      file.readAsString(); // el future basicamente realiza una accion
  //asincrona y permite terminar de forma asincrona

  f.then(print); // este then se usa cuando un future o funcion se completa
  //hace la accion que este dentro del parentersis en este caso imprimir
  //lo del file
  print('termian main');
}
