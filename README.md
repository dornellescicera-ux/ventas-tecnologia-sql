# RetailPro - Base de Datos de Ventas Tecnológicas

## Descripción

RetailPro es un proyecto de práctica SQL orientado a la gestión y análisis de ventas de productos tecnológicos.

La base de datos permite almacenar información sobre categorías, productos, clientes y ventas, utilizando un modelo relacional con claves primarias y foráneas para garantizar la integridad de los datos.

## Objetivo

Analizar el comportamiento de las ventas.
Identificar los productos con mayor facturación.
Detectar clientes recurrentes.
Generar información útil para la toma de decisiones comerciales.

## Base de Datos

**Nombre:** Ventas_Tech_DB

## Estructura del proyecto

- Módulo 4: Consultas de negocio.
- Módulo 5: JOINs y relaciones entre tablas.
- Scripts SQL documentados.

## Estructura de Tablas

### categorías

- id_categoria
- nombre_categoria

### productos

- id_producto
- nombre_producto
- precio
- id_categoria

### clientes

- id_cliente
- nombre
- email
- ciudad

### ventas
- id_venta
- id_cliente
- id_producto
- cantidad
- precio_unitario
- fecha_venta

  ## Relaciones

- Un producto pertenece a una categoría.
- Una venta está asociada a un cliente.
- Una venta está asociada a un producto.

## Tecnologías Utilizadas

- SQL Server
- SQL
- GitHub

## Instrucciones de Ejecución

Abrir SQL Server Management Studio
Ejecutar el archivo `ventas_tech_db.sql`
Verificar la creación de las tablas
Ejecutar las consultas de validación incluidas al final del script.

## Consultas de Validación

```sql
SELECT * FROM categorias;
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;
```
## Principales hallazgos

El producto 1 fue el de mayor facturación.
Febrero registró la facturación más alta.
El cliente 1 presentó el mayor gasto acumulado.

## Autor

Cicera Dornelles
