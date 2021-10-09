import 'clases/mi_servicio.dart';

///El patron singleton quiere decir que cuando se haga el 'new MiServicio'
///siempre va a regresar la misma instancia previamente generada de la clase
///es decir que solo haya una intancia en memoria de la clase y no importa
///cuantas veces se haga la instruccion de 'new MiServicio' siempre va a
///regresar la misma

main(List<String> args) {
  final spotifyService = new MiServicio();
  spotifyService.url = 'https://api.spotify.com/';
  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/1';

  print(spotifyService2 == spotifyService); //false?

  print(spotifyService.url);
  print(spotifyService2.url);
}
