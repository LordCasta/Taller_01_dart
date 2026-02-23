/*
  Ejercicio 4: Auditoría de Seguridad y Ecosistema

  Escenario: Una empresa Fortune 500 necesita decidir qué dispositivos comprar para sus empleados basándose en la
  seguridad.
  Análisis Requerido: Investiguen por qué el sistema 'cerrado' es preferido por los departamentos de IT y qué
  sucede con la seguridad en tiendas de terceros.
  Requerimiento de Código:
  1. Creen una lista de mapas donde cada mapa sea una plataforma con una clave esCerrado (bool) y tiendasTerceros
  (bool).
  2. Escriban una función que use un ciclo para analizar cada plataforma.
  3. Usen un condicional complejo: Si la plataforma es cerrada y no permite sideloading, agréguenla a una nueva lista
  de 'Aprobado para Empresa'.
  4. Muestren la lista final usando el método forEach.
*/

List<Map<String, dynamic>> plataformas = [
  {'nombre': 'Android', 'esCerrado': false, 'tiendasTerceros': true},
  {'nombre': 'iOS', 'esCerrado': true, 'tiendasTerceros': false},
  {'nombre': 'Windows Phone', 'esCerrado': true, 'tiendasTerceros': false},
];

List<Map<String, dynamic>> aprobadoParaEmpresa = [];

void auditarSeguridad() {
  plataformas.forEach((plataforma) {
    if (plataforma['esCerrado'] && !plataforma['tiendasTerceros']) {
      aprobadoParaEmpresa.add(plataforma);
    }
  });

  print("Plataformas Aprobadas para Empresa:");
  aprobadoParaEmpresa.forEach((plataforma) => print(plataforma['nombre']));
}