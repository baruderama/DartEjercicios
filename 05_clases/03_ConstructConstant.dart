class Location {
  final double lat;
  final double lng;
  const Location(this.lat, this.lng);
}

main(List<String> args) {
  final sanFran1 = new Location(18.333, 38.4444);
  final sanFran2 = new Location(18.333, 38.4445);
  final sanFran3 = new Location(18.333, 38.4445);

  print(sanFran1 == sanFran2);
  print(sanFran3 == sanFran2);

  //Cuando un constructor de una clase es constante todos apuntan al mismo
  //espacio de memoria
  const sanFran4 = const Location(18.333, 38.4440);
  const sanFran5 = const Location(18.333, 38.4441);
  const sanFran6 = const Location(18.333, 38.4441);

  print(sanFran4 == sanFran5);
  print(sanFran6 == sanFran5);
}
