/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

Map<String, dynamic> identificarUsuario() {
  stdout.writeln('¿Cúal es su nombre?');
  String nombre = stdin.readLineSync() ?? '';

  stdout.writeln('¿Qué edad tienes?');
  String edad = stdin.readLineSync() ?? '';

  stdout.writeln('¿En qué país naciste?');
  String pais = stdin.readLineSync() ?? '';

  return llenarMapSalario(nombre: nombre, edad: edad, pais: pais);
}

Map<String, dynamic> llenarMapSalario({
  String? nombre,
  String? edad,
  String? pais,
}) {
  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  return usuario;
}

double deduccion(double salario) => salario * 0.15;

double salarioNetoFunc(double salario) => salario - deduccion(salario);

Map<String, dynamic> llenarMapSalario2(
  Map<String, dynamic> usuarioNuevo, {
  double? salario,
  double? deduccion,
  double? salarioNeto,
}) {
  usuarioNuevo['salario'] = salario;
  usuarioNuevo['deducciones'] = deduccion;
  usuarioNuevo['salarioNeto'] = salarioNeto;

  return usuarioNuevo;
}

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  stdout.writeln('=========== Usuario 1 =============');

  stdout.writeln('Usuario 1 sin deducciones');
  Map<String, dynamic> usuarioOriginal = identificarUsuario();
  stdout.writeln(usuarioOriginal);

  double salario = 1500;
  double deducciones = deduccion(salario);
  double salarioNeto = salarioNetoFunc(salario);

  stdout.writeln(llenarMapSalario2(
    usuarioOriginal,
    salario: salario,
    deduccion: deducciones,
    salarioNeto: salarioNeto,
  ));

  // Persona 2
  stdout.writeln('=========== Usuario 2 =============');

  stdout.writeln('Usuario 2 sin deducciones');
  Map<String, dynamic> usuarioOriginal2 = identificarUsuario();
  stdout.writeln(usuarioOriginal2);

  double salario2 = 1800;
  double deducciones2 = deduccion(salario);
  double salarioNeto2 = salarioNetoFunc(salario);

  stdout.writeln(llenarMapSalario2(
    usuarioOriginal,
    salario: salario2,
    deduccion: deducciones2,
    salarioNeto: salarioNeto2,
  ));
}
