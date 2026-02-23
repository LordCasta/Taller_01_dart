import 'package:ejercicios/ejercicio1.dart' as ejercicio1;
import 'package:ejercicios/ejercicio2.dart' as ejercicio2;
import 'package:ejercicios/ejercicio3.dart' as ejercicio3;
import 'package:ejercicios/ejercicio4.dart' as ejercicio4;
import 'package:ejercicios/ejercicio5.dart' as ejercicio5;

void main(List<String> arguments) {

  //Ejercicio 1: El Dilema de la Monetización (ROI)
  print("Ejercicio 1: El Dilema de la Monetización (ROI)");
  ejercicio1.insertarPlataforma("Android", 1.40);
  ejercicio1.insertarPlataforma("IOS", 15);
  ejercicio1.imprimirPlataformas();
  ejercicio1.agregarPlataformasRecomendadas();
  ejercicio1.imprimirPlataformasRecomendadas();

  //Ejercicio 2: El Filtro de la Fragmentación (Adopción de OS)
  print("\nEjercicio 2: El Filtro de la Fragmentación (Adopción de OS)");
  print("Versiones y sus porcentajes de adopción:");
  ejercicio2.versiones.forEach(print);
  ejercicio2.filtrarVersiones();

  //Ejercicio 3: Personalización vs. Estabilidad
  print("\nEjercicio 3: Personalización vs. Estabilidad");
  ejercicio3.perfilesUsuario.forEach(ejercicio3.recomendarPlataforma);

  //Ejercicio 4: Auditoría de Seguridad y Ecosistema
  print("\nEjercicio 4: Auditoría de Seguridad y Ecosistema");
  ejercicio4.auditarSeguridad();

  //Ejercicio 5: El Dilema de la Innovación (Nuevas Funcionalidades)
  print("\nEjercicio 5: El Dilema de la Innovación (Nuevas Funcionalidades)");
  ejercicio5.compararAsistentes();
}
