main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 5), () {
    print('tres segundos depsues');
    return 'retorno del future';
  });

  timeout.then((texto) => print(texto));
  print('fin del main');
}
