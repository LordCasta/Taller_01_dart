//El Dilema de la Monetización (ROI)
/*
  Escenario: Una startup tiene un presupuesto limitado y debe elegir entre Android e iOS basándose en el gasto
  promedio del usuario.
  Análisis Requerido: Busquen en las fuentes el gasto mensual promedio de un usuario de iOS frente a uno de
  Android y la recaudación total de cada tienda en 2025.
  Requerimiento de Código:
  1. Creen una función que reciba una lista de mapas. Cada mapa representa una plataforma con su nombre y gasto
  promedio.
  2. Usen un ciclo para recorrer la lista y un condicional para determinar cuál plataforma genera 'Alta Rentabilidad'
  (gasto > $10).
  3. Almacenen el resultado en un nuevo mapa de 'Recomendación Final' y muéstrenlo por consola. 
*/

List<Map<String, dynamic>> plataformas = [];
List<Map<String, dynamic>> plataformasRecomendadas = [];

void insertarPlataforma(String nombre, double promedioGasto){
  Map<String, dynamic> plataforma = {
    'nombre' : nombre,
    'promedioGasto': promedioGasto
  };

  plataformas.add(plataforma);

}

void imprimirPlataformas() {
  plataformas.forEach(print);
}

void agregarPlataformasRecomendadas(){
  plataformasRecomendadas.addAll(plataformas.where((platform) => platform['promedioGasto'] > 10));
}

void imprimirPlataformasRecomendadas() {
  print("Plataformas Recomendadas:");
  plataformasRecomendadas.forEach(print);
}