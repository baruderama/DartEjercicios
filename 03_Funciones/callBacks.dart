main(List<String> args) {
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });
}

void obtenerUsuario(String id, Function callBack) {
  Map usuario = {'id': id, 'nombre': 'juan Carlos'};

  callBack(usuario);
}
