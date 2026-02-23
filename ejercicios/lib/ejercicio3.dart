/*
    Ejercicio 3: Personalización vs. Estabilidad
    Escenario: Un usuario 'Hardcore' busca un teléfono que le permita control total (root, launchers), mientras que un
    usuario 'Ejecutivo' busca estabilidad y nulos fallos.
    Análisis Requerido: Identifiquen cuál plataforma destaca por 'libertad de personalización' y cuál por 'no tener
    lags ni crashes'.
    Requerimiento de Código:
    1. Creen un mapa de 'Perfiles de Usuario' con sus preferencias.
    2. Creen una lista de 'Atributos de Plataforma' (ej. 'Customización', 'Estabilidad', 'Sideloading').
    3. Usen una función que reciba el mapa de perfil, recorra la lista de atributos con un ciclo y use condicionales para
    hacer el 'match' perfecto.
    4. Impriman la recomendación detallada.
*/ 

List<Map<String, dynamic>> plataforma = [
  {'nombre': 'Android', 'atributos': ['Customización', 'Sideloading']},
  {'nombre': 'iOS', 'atributos': ['Estabilidad', 'No crashes']},
  {'nombre': 'Windows Phone', 'atributos': ['Customización', 'Estabilidad']},
];

List<Map<String, dynamic>> perfilesUsuario = [
  {'nombre': 'Hardcore', 'preferencias': ['Customización', 'Sideloading']},
  {'nombre': 'Ejecutivo', 'preferencias': ['Estabilidad', 'No crashes']},
];

void recomendarPlataforma(Map<String, dynamic> perfil) {
  String nombrePerfil = perfil['nombre'];
  List<String> preferencias = perfil['preferencias'];

  print("Recomendación para el perfil '$nombrePerfil':");

  plataforma.forEach((plataforma) {
    List<String> atributos = plataforma['atributos'];
    bool match = preferencias.every((preferencia) => atributos.contains(preferencia));

    if (match) {
      print("- ${plataforma['nombre']} es la plataforma ideal para ti, ya que cumple con tus preferencias de ${preferencias.join(', ')}.");
    }
  });
}