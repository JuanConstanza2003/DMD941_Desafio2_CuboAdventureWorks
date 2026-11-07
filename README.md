# Desafío práctico 2: Data Warehouse y Minería de Datos

**Asignatura:** DMD941 – Data Warehouse y Minería de Datos (G01T)  
**Proyecto:** Cubo OLAP con AdventureWorksDW2022 y visualización en Power BI

## Descripción del proyecto

Este repositorio contiene los archivos utilizados y generados para el desarrollo del desafío práctico. El trabajo parte de la base de datos **AdventureWorksDW2022**, cuya información se exploró mediante consultas SQL. Después se diseñó un cubo OLAP en SQL Server Analysis Services (SSAS), se procesaron sus datos y se conectó el modelo a Power BI para presentar los resultados mediante visualizaciones.

El cubo trabaja con dos grupos de medidas: **Fact Internet Sales** y **Fact Reseller Sales**. También incorpora dimensiones para analizar las ventas por fecha, producto, territorio, cliente, distribuidor y empleado. Para completar el análisis se agregaron medidas calculadas de ganancia y margen porcentual, con las que se comparan los dos canales de venta.

## Contenido del repositorio

| Carpeta o archivo | Descripción |
|---|---|
| `DESAFÍO PRÁCTICO 2 - DATAWAREHOUSE Y MINERÍA DE DATOS DMD941 G01T.pdf` | Documento con el enunciado e indicaciones originales de la actividad. |
| `capturas/` | Capturas y diagramas de apoyo relacionados con el desarrollo del proyecto. |
| `cubo-olap/CuboAdventureWorks/` | Solución y proyecto de Visual Studio para Analysis Services. Incluye el cubo, las dimensiones, el origen de datos y la vista del origen de datos. |
| `powerbi/reporte_adventureworks.pbix` | Archivo del informe desarrollado en Power BI Desktop. |
| `powerbi/reporte_graficos.pdf` | Exportación en PDF de las visualizaciones del informe de Power BI. |
| `sql/` | Consultas SQL utilizadas para explorar y analizar la información, validar resultados y configurar los permisos del servicio de Analysis Services. |

## Herramientas utilizadas

- **SQL Server 2022:** motor de base de datos y servicio de Analysis Services en modo multidimensional.
- **SQL Server Management Studio (SSMS):** restauración de la base de datos, ejecución de consultas y administración de los servicios.
- **Visual Studio:** creación y configuración del proyecto multidimensional mediante la extensión Microsoft Analysis Services Projects.
- **Power BI Desktop:** conexión al cubo OLAP y elaboración de las visualizaciones.
- **AdventureWorksDW2022:** almacén de datos utilizado como fuente de información.

## Consultas SQL incluidas

Los scripts de la carpeta `sql/` están separados por tema y numerados para facilitar su revisión:

| Archivo | Propósito |
|---|---|
| `01_verificar_version_servidor.sql` | Consultar la versión de SQL Server. |
| `02_conteo_filas_factinternetsales.sql` | Contar los registros de ventas por Internet. |
| `03_tablas_y_cantidad_de_filas.sql` | Listar las tablas de la base y su cantidad de filas. |
| `04_vista_previa_factinternetsales.sql` | Consultar una muestra de los registros de ventas por Internet. |
| `05_ventas_por_anio_internet.sql` | Resumir las ventas por año para el canal de Internet. |
| `06_ventas_por_categoria_internet.sql` | Agrupar las ventas por categoría de producto para Internet. |
| `07_ventas_costo_ganancia_por_anio_internet.sql` | Calcular ventas, costo y ganancia anual para Internet. |
| `08_top10_productos_por_ventas_internet.sql` | Obtener los diez productos con mayores ventas por Internet. |
| `09_ventas_por_pais_internet.sql` | Resumir las ventas por país para Internet. |
| `10_ventas_por_genero_e_ingreso_internet.sql` | Agrupar las ventas por género y nivel de ingresos del cliente. |
| `11_comparacion_ventas_internet_vs_distribuidores_por_anio.sql` | Comparar las ventas anuales de ambos canales. |
| `12_ventas_por_categoria_distribuidores.sql` | Agrupar las ventas de distribuidores por categoría. |
| `13_ganancia_por_anio_distribuidores.sql` | Calcular la ganancia anual del canal de distribuidores. |
| `14_permisos_servicio_analysis_services.sql` | Configurar permisos de lectura para la cuenta del servicio de Analysis Services. |

Los scripts se pueden abrir y ejecutar individualmente desde SSMS. Antes de ejecutarlos, se debe comprobar que la base de datos `AdventureWorksDW2022` esté restaurada en la instancia de SQL Server.

## Requisitos para abrir el proyecto

Para trabajar con los archivos se necesita:

- SQL Server con Database Engine y Analysis Services instalado en modo **Multidimensional**.
- SQL Server Management Studio (SSMS).
- Visual Studio con la extensión **Microsoft Analysis Services Projects**.
- Power BI Desktop.
- La base de datos `AdventureWorksDW2022` restaurada en SQL Server.

**Importante:** el respaldo `AdventureWorksDW2022.bak` no está incluido en este repositorio. Se debe obtener por separado desde la fuente oficial de AdventureWorks y restaurar en SQL Server antes de desplegar y procesar el cubo.

## Cómo abrir y utilizar los archivos

### 1. Preparar la base de datos

Instalar y configurar SQL Server con Database Engine y Analysis Services en modo multidimensional. Luego restaurar la base de datos `AdventureWorksDW2022` en el motor de SQL Server.

### 2. Abrir el proyecto del cubo OLAP

1. Abrir Visual Studio con la extensión Microsoft Analysis Services Projects instalada.
2. Abrir la solución `cubo-olap/CuboAdventureWorks/CuboAdventureWorks.sln`.
3. Revisar el origen de datos y confirmar que apunte a la instancia donde se restauró `AdventureWorksDW2022`.
4. Comprobar que la cuenta del servicio de Analysis Services tenga permisos de lectura sobre la base.
5. Desplegar el proyecto en el servidor de Analysis Services y procesar el cubo para cargar los datos.

La configuración incluida utiliza `localhost` como servidor y autenticación integrada de Windows. Al abrir el proyecto en otro equipo o utilizar otra instancia, será necesario ajustar la conexión y revisar los permisos correspondientes.

### 3. Abrir el informe de Power BI

Abrir `powerbi/reporte_adventureworks.pbix` con Power BI Desktop. El servidor de Analysis Services debe estar disponible y el cubo debe estar desplegado y procesado para consultar los datos. La conexión está configurada para la instancia local `localhost`; en otro equipo se debe revisar el origen de datos.

El archivo `powerbi/reporte_graficos.pdf` permite consultar las visualizaciones exportadas sin necesidad de abrir Power BI Desktop.

## Consideraciones

- El PDF ubicado en la raíz del repositorio corresponde al enunciado original del desafío; no es el informe exportado de Power BI.
- El repositorio incluye el proyecto del cubo, el informe de Power BI, las consultas SQL y material gráfico de apoyo.
- El respaldo de la base de datos no está incluido, por lo que debe restaurarse por separado antes de ejecutar el proyecto.
- Las conexiones y los permisos pueden requerir ajustes cuando el proyecto se abra en un equipo distinto al utilizado durante su desarrollo.
