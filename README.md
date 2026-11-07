# Desafío práctico 2: Data Warehouse y Minería de Datos

**Asignatura:** DMD941 – Data Warehouse y Minería de Datos (G01T)  
**Proyecto:** Cubo OLAP con AdventureWorksDW2022 y visualización en Power BI

## ¿De qué trata este proyecto?

En este repositorio reuní los archivos que utilicé para desarrollar el desafío práctico. El trabajo lo realicé utilizando la base de datos AdventureWorksDW2022. Primero preparé el entorno y restauré la base de datos en SQL Server. Después revisé la información con consultas SQL para identificar los datos que iba a utilizar y las preguntas que podía responder con ellos.

Con esa información creé el cubo OLAP en Visual Studio, utilizando SQL Server Analysis Services en modo multidimensional. Trabajé con dos grupos de medidas: Fact Internet Sales y Fact Reseller Sales. También configuré las dimensiones de fecha, producto, territorio, cliente, distribuidor y empleado, y agregué medidas calculadas para obtener la ganancia y el margen de cada canal.

Cuando terminé de construir y procesar el cubo, comparé sus resultados con las consultas SQL para comprobar que los totales coincidieran. Finalmente conecté el cubo a Power BI y preparé las visualizaciones para revisar las ventas y la rentabilidad de ambos canales.

## Archivos del repositorio

Organicé los archivos en carpetas para que sea más fácil encontrar cada parte del trabajo:

| Carpeta o archivo | Qué contiene |
|---|---|
| `DESAFÍO PRÁCTICO 2 - DATAWAREHOUSE Y MINERÍA DE DATOS DMD941 G01T.pdf` | El enunciado original con las indicaciones del desafío. |
| `capturas/` | Las capturas y los diagramas que fui guardando durante el desarrollo. |
| `cubo-olap/CuboAdventureWorks/` | La solución de Visual Studio y los archivos del cubo: dimensiones, origen de datos, vista del origen de datos y configuración del proyecto. |
| `powerbi/reporte_adventureworks.pbix` | El archivo del informe que preparé en Power BI Desktop. |
| `powerbi/reporte_graficos.pdf` | Una exportación en PDF de las visualizaciones de Power BI. |
| `sql/` | Las consultas que utilicé para revisar los datos, hacer los cálculos y comprobar los resultados. También está el script de permisos para Analysis Services. |

## Consultas SQL

Dejé las consultas separadas en archivos para poder identificarlas y ejecutarlas por separado desde SSMS. En total son 14:

1. `01_verificar_version_servidor.sql`: revisa la versión de SQL Server.
2. `02_conteo_filas_factinternetsales.sql`: cuenta los registros de FactInternetSales.
3. `03_tablas_y_cantidad_de_filas.sql`: muestra las tablas de la base de datos y su cantidad de filas.
4. `04_vista_previa_factinternetsales.sql`: muestra los primeros registros de FactInternetSales.
5. `05_ventas_por_anio_internet.sql`: agrupa las ventas por año para el canal de Internet.
6. `06_ventas_por_categoria_internet.sql`: muestra las ventas por categoría de producto para Internet.
7. `07_ventas_costo_ganancia_por_anio_internet.sql`: obtiene ventas, costo y ganancia por año para Internet.
8. `08_top10_productos_por_ventas_internet.sql`: muestra los diez productos con mayores ventas por Internet.
9. `09_ventas_por_pais_internet.sql`: agrupa las ventas por país.
10. `10_ventas_por_genero_e_ingreso_internet.sql`: agrupa las ventas por género y nivel de ingresos del cliente.
11. `11_comparacion_ventas_internet_vs_distribuidores_por_anio.sql`: compara las ventas anuales de Internet y distribuidores.
12. `12_ventas_por_categoria_distribuidores.sql`: muestra las ventas por categoría para distribuidores.
13. `13_ganancia_por_anio_distribuidores.sql`: calcula la ganancia anual de distribuidores.
14. `14_permisos_servicio_analysis_services.sql`: asigna permisos de lectura a la cuenta del servicio de Analysis Services.

## Herramientas utilizadas

Para realizar el trabajo utilicé SQL Server 2022, SQL Server Management Studio (SSMS), Visual Studio con la extensión Microsoft Analysis Services Projects y Power BI Desktop. La base de datos utilizada fue AdventureWorksDW2022.

## Para abrir el proyecto

Antes de abrir el cubo, es necesario tener instalada la base de datos AdventureWorksDW2022 en SQL Server y contar con Analysis Services configurado en modo multidimensional.

Para revisar el proyecto del cubo, se puede abrir desde Visual Studio el archivo `cubo-olap/CuboAdventureWorks/CuboAdventureWorks.sln`. La conexión que dejé configurada utiliza `localhost` y autenticación integrada de Windows. Si se abre desde otro equipo, habrá que revisar el servidor configurado y los permisos de la cuenta del servicio de Analysis Services. Después de comprobar la conexión, se puede desplegar y procesar el cubo.

El informe se encuentra en `powerbi/reporte_adventureworks.pbix` y se abre con Power BI Desktop. Para consultar las visualizaciones sin abrir el programa también está el archivo `powerbi/reporte_graficos.pdf`. Para que el PBIX pueda consultar los datos, el servidor de Analysis Services debe estar disponible y el cubo debe estar procesado.

**Nota:** el respaldo `AdventureWorksDW2022.bak` no está incluido en el repositorio. Es necesario descargarlo por separado y restaurarlo en SQL Server antes de desplegar y procesar el cubo.
