/*
  Ejercicio 2: El Filtro de la Fragmentación (Adopción de OS)
  Escenario: Un cliente quiere lanzar una app con IA avanzada, pero teme que los usuarios no tengan la versión de OS
  necesaria.
  Análisis Requerido: Analicen los porcentajes de adopción de Android 15 frente a iOS 18 mencionados en las
  fuentes.
  Requerimiento de Código:
  1. Creen una lista con los porcentajes de adopción de las versiones más recientes.
  2. Definan una variable de 'Umbral Crítico' (ej. 50%).
  3. Escriban una función que use un ciclo y condicionales para filtrar cuáles versiones están por debajo del umbral.
  4. Si una plataforma tiene menos del umbral, el programa debe sugerir mediante un mapa una 'Estrategia de
  Retrocompatibilidad'.
*/

const double umbralCritico = 50.0;

List<Map<String, dynamic>> versiones = [
  {'nombre': 'Android 15', 'adopcion': 45.0},
  {'nombre': 'iOS 18', 'adopcion': 55.0},
];

void filtrarVersiones() {
  List<Map<String, dynamic>> versionesFiltradas = versiones.where((version) => version['adopcion'] < umbralCritico).toList();

  if (versionesFiltradas.isEmpty) {
    print("Todas las versiones están por encima del umbral crítico.");
  } else {
    print("Versiones por debajo del umbral crítico:");
    versionesFiltradas.forEach((version) {
      print("${version['nombre']} con adopción del ${version['adopcion']}%");
      print("Estrategia de Retrocompatibilidad: Implementar soporte para versiones anteriores y optimizar la app para un rendimiento eficiente en dispositivos más antiguos.");
    });
  }
}