main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 5), () {
    if (1 == 1) {
      throw 'Auxilio exploto esta cosa';
    }
    return 'retorno del future';
  });

  timeout.then(print).catchError((error) => print(error));
  print('fin del main');
}
