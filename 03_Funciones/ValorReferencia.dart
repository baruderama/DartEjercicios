String capitalizar(String texto) {
  texto = texto.toUpperCase();

  return texto;
}

//Los valores que pasan a una funcion siempre van con referencia
//para poder crear una copia se hace los de abajo

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  //romper la referencia
  mapa = {...mapa};
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'no hay nombre';

  return mapa;
}

main(List<String> args) {
  String nom = 'fernando';
  String nom2 = capitalizar(nom);

  Map<String, String> persona = {'nombre': 'tony Starck'};

  Map<String, String> persona2 = capitalizarMapa(persona);

  print(persona);
  print(persona2);
  // print(nom);
  //print(nom2);
}
