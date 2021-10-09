main(List<String> args) {
  //operadores de asignacion
  int? a; //= 10;
  int? b;
  //b = 1;
  //b ??= 20; //asignar el valor solo si la variable es nula

  //print(b);

  // Operadores condicionales
  int c = 28;
  //esto de aca es un condicional en una linea sin if
  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';
  //print(resp);

  // Esto dice que si el valor de b es nulo que asigne el de a
  // a la variable d. ASI MISMO SE PUEDEN METER CUANTOS VALORES SE QUIERA
  int d = b ?? a ?? 100;
  //print(d);

  //operadores Relacionales
  //todos retornan un valor booleano
  /*
  > Mayor que
  < Menor que
  >= Mayor o igual que
  <= Menor o igual que
  == Revisa si dos objetos son iguales
  != Revisa si dos objetos son diferentes
  */

  String persona1 = 'Fernando';
  String persona2 = 'alberto';

  //print(persona2 == persona1);
  //print(persona2 != persona1);

  int x = 20;
  int y = 30;

  // print(x > y); //false
  // print(x < y); //true
  // print(x >= y); // false
  // print(x <= y); //true

  //Operador de tipo
  int i = 10;
  String j = '10';

  print(i is int); //true
  print(j is! int); //true
}
