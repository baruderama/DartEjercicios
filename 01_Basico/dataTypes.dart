main() {
  var a = 10;
  double b = 5;
  double c = a + b;

  String nombre = 'tony';
  //interrogacion es para poder usar el nulo en una variable
  String? nombre2;
  String nom = 'Tony';
  String hey = 'O\'Connor';
  String multilinea = '''
  Hey bro, me das empanada porfa
  $nom $hey
  yeah
  ''';

//--Booleans
  bool isActive = true;

  bool isNotActive = !isActive;
  // print(isNotActive);

  // ----Lists
  var villanos = [
    'lex',
    'juan',
    'doom',
    1,
    true,
    2.3
  ]; //esto significa que es una lista de objetos
  List<String> vill = ['loco', 'lelo'];
  vill[0] = 'super';
  vill.add('lola');
  vill.add('lola');
  vill.add('lola');
  vill.add('lola');
  vill.add('lola');
  // print(vill);
  var villaSets = vill.toSet();
  // print(villaSets);

  // ------Sets\
  //principalmente no admite objetos duplicados. En las listas si admite
  Set<String> villanos2 = {'lolo', 'lala', 'lelo'};
  villanos2.add('bro');
  villanos2.add('bro');
  villanos2.add('bro');
  villanos2.add('bro');
  villanos2.add('bro');
  //print(villanos2);

//---mapas

  Map<double, dynamic> parejas = {
    1.0: 'tony',
    2.0: 'gansta',
    3.0: 123445,
  };
  print(parejas[3.0]);

  Map<String, dynamic> cap = new Map();
  cap.addAll({
    'nom': 'Steve',
    'poder': 'bailar',
  });
  print(cap);
}
