import 'dart:math';

main(List<String> args) {
  //un numero random entre 0 y el numero puesto en este caso es el 7
  int random = Random().nextInt(7);

  // if (random == 0) {
  //   print('Lunes');
  // } else if (random == 1) {
  //   print('Martes');
  // }

  print(random);
  switch (random) {
    //0,1,2,3,4,5,6
    case 0:
      print('Lunes');
      break;

    case 1:
      print('Martes');
      break;

    case 2:
      print('Miercoles');
      break;

    case 3:
      print('Jueves');
      break;

    case 4:
      print('Viernes');
      break;

    case 5:
      print('Sabado');
      break;

    case 6:
      print('Domingo');
      break;

    default:
      print('No es un dia de la semana');
  }
}
