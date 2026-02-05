**_Resumen de SQL JOINs_**  
Los JOINs se utilizan para combinar filas de dos o más tablas basándose en una columna relacionada entre ellas.

1. INNER JOIN
   Retorna solo las filas donde hay una coincidencia en ambas tablas.

Uso: Cuando solo te interesan los datos que tienen relación completa (ej: Clientes que sí tienen una compra registrada).

Resultado: Si un ID no está en las dos tablas, queda fuera del reporte.

2. LEFT JOIN (u Outer Left)
   Retorna todas las filas de la tabla izquierda y las filas coincidentes de la derecha.

Uso: Es el estándar en Data Engineering. Sirve para mantener el universo total de la tabla principal.

Resultado: Si no hay match en la derecha, verás NULL.

3. RIGHT JOIN (u Outer Right)
   Retorna todas las filas de la tabla derecha y las coincidentes de la izquierda.

Nota: Es exactamente lo opuesto al Left. Se usa poco porque es más fácil de leer un LEFT JOIN cambiando el orden de las tablas en el código.

4. FULL OUTER JOIN
   Retorna todos los registros de ambas tablas, coincidan o no.

Uso: Para encontrar registros "huérfanos" en cualquiera de las dos tablas.

Resultado: Muchísimos NULLs donde no hubo coincidencias de ningún lado.
