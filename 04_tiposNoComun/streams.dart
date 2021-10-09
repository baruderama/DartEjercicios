import 'dart:async';

main(List<String> args) {
  final streamControler = StreamController<String>.broadcast(); // con el
  //broadcast se puede usar el stream en varios listen como se ve abajo

  //el stream es como un rio que siempre esta corriendo en una direccion
  //y que siempre esta escuchando a cualquier cosa que se le agregue para
  //ejecutarla dentro de la funcion, y como es asincrono siempre termina despues
  //del codigo secuencial

  streamControler.stream.listen(
    (event) => print('despegando: $event'),
    onError: (err) => print('Error $err'), //se ejecuta con el addError
    onDone: () => print('Mision completa'), //el onDone se ejecuta cuando el
    //stream se cierra con esta funcion: streamControler.sink.close();
    cancelOnError: false, //esto cancela el stream cuando haya un addError,
    //para eso debe estar en true
  );

  streamControler.stream.listen(
    (event) => print('despegando stream 2: $event'),
    onError: (err) => print('Error stream 2 $err'), //se ejecuta con el addError
    onDone: () =>
        print('Mision completa stream 2'), //el onDone se ejecuta cuando el
    //stream se cierra con esta funcion: streamControler.sink.close();
    cancelOnError: false, //esto cancela el stream cuando haya un addError,
    //para eso debe estar en true
  );

  streamControler.sink.add('Apolo 11');
  streamControler.sink.add('Apollo 12');
  streamControler.sink.add('Apollo 13');
  streamControler.sink.addError('Houston tenemos un problema');
  streamControler.sink.add('Apollo 14');
  streamControler.sink.add('Apollo 15');
  streamControler.sink.close();

  //aca termina el programa secuencial
  print('fin del main');
}
