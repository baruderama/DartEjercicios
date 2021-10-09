main(List<String> args) {
  //Estas etiquetas sirven para referirse a los ciclos for a la hora
  //de hacer break o continue
  outerLoop:
  for (var i = 0; i < 5; i++) {
    print('valor de i: $i');

    innerLoop:
    for (var j = 0; j < 5; j++) {
      print('valor de j: $j');
      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
