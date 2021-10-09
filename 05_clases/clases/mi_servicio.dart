class MiServicio {
  static final MiServicio _singleton = new MiServicio._internal();

  factory MiServicio() {
    return _singleton;
  }

  ///Esto es un constructor privado
  MiServicio._internal();
  String url = 'https://abc';
  String key = 'ABCD';
}
