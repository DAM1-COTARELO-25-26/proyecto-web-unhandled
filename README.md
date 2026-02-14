# 🚗 Unhandled 🚗

Este repositorio de GitHub contiene la web para el trabajo final de Lenguaje de Marcas.

## 🗂️ Contenidos 🗂️

La web es un archivo o directorio de distintas marcas de coches y algunos de sus coches con las especificaciones de cada uno.

| Categoría | Contenido |
| ----------- | ----------- |
| Tema | Coches |
| Público Objetivo | Entusiastas del Motor |
| Tipografía | BBH Sans Hegarty |
| Colores | Esmeralda y Negro |

| Marca       | Coche más destacado                  |
|------------|------------------------------------|
| BMW        | BMW M3 EP2 Coupé                    |
| FERRARI    | FERRARI 288 GTO 1984                |
| FORD       | FORD MUSTANG G7 S650                |
| MERCEDES   | MERCEDES AMG GT63 SE PERFORMANCE    |
| PORSCHE    | PORSCHE 911 GT3 RS 2025             |
| AUTO - VAZ | VAZ-2101                             |
| AUDI       | AUDI RS7 SPORTBACK                   |

La web contiene el landing (index.html). Y una página por cada marca de coche. En todas las páginas se puede volver a la landing o ir a otra marca empleando el menú de navegación.

## Estructura de Datos XML
### Descripción
Este proyecto utiliza XML para estructurar una base de datos simple de vehículos con sus datos.
### Archivos
- **`/datos/vehiculos.xml`**: Indica la descripción del contenido
- **`/datos/vehiculos.dtd`**: Validador DTD
- **`/datos/vehiculos.xsd`**: Schema XSD con restricciones avanzadas
### Estructura principal

vehiculos<br>
└── coche<br>
&emsp;&emsp;├── nombre<br>
&emsp;&emsp;├── imagenes<br>
&emsp;&emsp;&emsp;&emsp;└── img<br>
&emsp;&emsp;├── descripcion<br>
&emsp;&emsp;└── ficha-tecnica<br>
&emsp;&emsp;&emsp;&emsp;├── masa<br>
&emsp;&emsp;&emsp;&emsp;├── longitud<br>
&emsp;&emsp;&emsp;&emsp;├── ancho<br>
&emsp;&emsp;&emsp;&emsp;├── altura<br>
&emsp;&emsp;&emsp;&emsp;├── velocidad-max<br>
&emsp;&emsp;&emsp;&emsp;├── tiempo-aceleracion<br>
&emsp;&emsp;&emsp;&emsp;└── consumo<br>
### Validación
Ver documentación completa en [`/datos/validacion.md`](datos/validacion.md)

[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/0esC98hF)

