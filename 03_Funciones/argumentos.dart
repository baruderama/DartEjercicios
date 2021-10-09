main(List<String> args) {
  saludar(
    'hola',
    'fernando',
  ); //esto es porque esta esperando un string o espcificamente un null

  saludar2('hola', nombre: 'hey', veces: 2, pais: 'colombia');
}

// si se ponen llaves [] son opcionales con algun valor por defecto y para
//recibir argumentos poisicionales

void saludar(String mensaje, [String nom = 'inserte nombre', int edad = 20]) {
  print('$mensaje $nom $edad');
}

// si se ponen las llaves {} son argumentos opcionales y para que se puedan
//recibir como argumentos por nombre
void saludar2(String mensaje,
    {required String nombre, int veces = 10, String? pais}) {
  print('saludar2: $mensaje $nombre - $veces - $pais');
}
