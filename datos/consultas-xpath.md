# Consultas XPath

Documento a consultar: vehiculos.xml

## //coche

Se seleccionan todos los coches del XML.

El resultado es un xml con todos los elementos \<coche\>

Este XPath es bastante útil para obtener una lista de todos los coches para luego tratar con ellos

## //nombre/text()

Se obtiene una lista de todos los nombres de los coches.

Este XPath es bastante útil para obtener una lista en texto plano de los nombres de los vehículos, sin su información ni ficha técnica.

## //coche[contains(./nombre, 'Audi')]/nombre/text()

Se obtiene una lista de todos los nombres de coche que contienen la palabra "Audi".

Este XPath es bastante útil para poder buscar en la lista un nombre de coche determinado, en este caso "Audi".

## count(//coche)

Se obtiene un número con la cantidad de coches que hay en el XML.

Este XPath es bastante útil para poder obtener la cantidad de coches que hay en el XML.

## count(//coche[@marca = 'auto-vaz'])

Similar al anterior, se obtiene el número de coches que hay en el XML, sin embargo, filtra por la marca, en este caso se obtiene el número de coches de la marca "Auto Vaz".

Este XPath es bastante útil para poder obtener la cantidad de coches de una marca determinada.

## sum(//consumo)

Se obtiene la suma del consumo de todos los coches del XML.

Este XPath es bastante útil para poder obtener el valor de consumo total de todos los coches en el XML.

## //consumo[ . > 12]/ancestor::coche/nombre/text()

Se obtiene el nombre de los coches cuyo consumo es mayor de 12.

Este XPath es bastante útil para poder obtener una lista de los coches con un consumo mayor al definido.