# Taller_01_dart
## Ejercicio 1
Decidí usar 'List<Map<String, dynamic>>' porque es la mejor manera de agrupar estos datos de plataformas, que terminan necesitando más de un dato por cada plataforma, decidí probar con pasar dinámicamente los datos mediante una función que recibe el nombre y el promedio de gasto.
De allí me pareció mejor manejar dos listas separadas, una para la base, y otra para agregar solamente las plataformas recomendadas

## Ejercicio 2
Decidí ir un poco más profundo y experimentar con las funciones dinámicas para empezar a seguir las buenas prácticas de reducir código, implementando las funciones de filtros para estas Listas de Mapas, y llenar una nueva lista de filtros apoyado de este filtro.
Ya de allí, es un simple ciclo que recorre e imprime los resultados. Eso sí, con un condicional para evitar imprimir una lista vacía (buenas prácticas).

## Ejercicio 3
Para poder hacer un "match" o coincidencia entre gustos y las plataformas, me pareció mejor usar dos listas, una para los perfiles o "gustos" y otra para las plataformas y sus características, para simplemente hacer un comparativo entre gustos de usuario y las plataformas

## Ejercicio 4
Este ejercicio me pareció un poco más simple, ya que el requerimiento de la empresa se resume en el if(), si la plataforma cumple con que es cerrada y cumple con que no está en tiendas de terceros, esas son las adecuadas.

## Ejercicio 5
Me pareció interesante investigar e implementar funciones que se usarían más en proyectos reales, trayendo datos desde una base de datos y filtrando entre estos de forma dinámica e imprimiendo de forma dinámica con el uso de funciones de filtrado y condicionales para la impresión de datos coherentes con la petición o incoherentes con el requerimiento y el por qué