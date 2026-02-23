/*
  Ejercicio 5: El Futuro de la IA (Gemini vs. Apple Intelligence)
  Escenario: Un desarrollador quiere saber qué asistente de voz es más versátil en 2026.
  Análisis Requerido: Busquen en las fuentes qué asistente lidera actualmente y qué modelos (como Gemini
  Nano) se usan en dispositivos específicos.
  Requerimiento de Código:
  1. Creen una lista de capacidades de IA (ej. 'Traducción en vivo', 'Generación de contenido', 'Resumen de web').
  2. Creen un mapa que asocie a Siri y Gemini con sus capacidades actuales según la fuente.
  3. Usen un ciclo para verificar si la lista de capacidades del usuario está contenida (contains) en el mapa de la
  plataforma.
  4. Escriban una función que devuelva un reporte comparativo final.
*/

List<String> capacidadesIA = ['Traducción en vivo', 'Generación de contenido', 'Resumen de web'];
Map<String, List<String>> asistentesVoz = {
  'Siri': ['Traducción en vivo', 'Generación de contenido'],
  'Gemini Nano': ['Traducción en vivo', 'Generación de contenido', 'Resumen de web'],
};

void compararAsistentes() {
  print("Comparativa de Asistentes de Voz:");

  asistentesVoz.forEach((asistente, capacidades) {
    bool cumpleCapacidades = capacidadesIA.every((capacidad) => capacidades.contains(capacidad));

    if (cumpleCapacidades) {
      print("- $asistente es el asistente de voz más versátil, ya que cumple con todas las capacidades requeridas.");
    } else {
      print("- $asistente no cumple con todas las capacidades requeridas. Capacidades faltantes: ${capacidadesIA.where((capacidad) => !capacidades.contains(capacidad)).join(', ')}");
    }
  });
}