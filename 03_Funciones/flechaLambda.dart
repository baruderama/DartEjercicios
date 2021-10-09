main(List<String> args) {
  int a = 10, b = 20;

  int resultado = sumaFlecha(a, b);

  List<int> listado = [1, 2, 3, 4, 5, 6, 7, 8, 89, 9, 99, 8, 7];

  // var nuevoListado = listado.where((numero) {
  //   return numero >= 4;
  // });

  var nuevoListado = listado.where((n) => n > 4);
  print(nuevoListado);
}

int sumar2(int x, int y) {
  return x + y;
}

int sumaFlecha(int x, int y) => x + y;

//Las funciones de felcha pueden remplazar las funciones convencionales 
//si lo que se va a hacer no implica un codigo tan largo o complicado
