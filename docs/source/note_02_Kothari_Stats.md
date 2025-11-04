# Estadísticos Descriptivos de Variables Relevantes Kothari

<!-- Este archivo muestra los estadísticos descriptivos de las variables relevantes para el modelo de Kothari. -->

**Fuente:** notebooks/02_Clean_Data.ipynb

## Resumen de limpieza de datos

En este notebook se realizó la limpieza de la base de datos para el modelo de Kothari. Se identificaron las columnas relevantes, se eliminaron las filas con valores faltantes (NaN) en dichas columnas y aquellas donde los activos totales al inicio del año eran cero. Además, se crearon variables adicionales como el peso relativo de cada empresa y los devengos totales. El resultado es un DataFrame filtrado y listo para el análisis exploratorio y el cálculo de los devengos discrecionales.

## Tabla de Estadísticos

| Variable | N | Minimum | Maximum | Mean | Std. Dev | Skewness | Kurtosis |
|----------|---|---------|---------|------|----------|----------|----------|
| UTILIDAD NETA | 158 | -2191000000.00 | 3889000000.00 | 351922496.84 | 830367945.04 | 1.85 | 4.90 |
| ROA | 158 | -114.93 | 47.67 | 0.09 | 21.70 | -2.80 | 10.93 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 158 | 0.00 | 6.00 | 0.97 | 1.16 | 1.15 | 1.17 |
| Total en Directorios | 158 | 0.00 | 14.00 | 6.18 | 4.59 | -0.03 | -1.00 |
| Cantidad de mujeres en otros ejecutivos | 158 | 0.00 | 6.00 | 0.66 | 1.14 | 2.25 | 5.20 |
| Total en otros ejecutivos | 158 | 0.00 | 33.00 | 7.65 | 5.57 | 1.13 | 2.14 |
| Flujo efectivo de operación (CFO) | 158 | -173458000.00 | 8301000000.00 | 800192693.73 | 1460381781.21 | 2.47 | 6.46 |
| Activos total al inicio de anio | 158 | 128954000.00 | 40824000000.00 | 4729168484.46 | 8521278550.51 | 2.89 | 7.88 |
| Ventas del anio (diferencia) | 158 | -2797000000.00 | 5231138000.00 | 40604506.38 | 680072518.90 | 2.52 | 22.80 |
| Cuentas por cobrar (diferencia) | 158 | -603143000.00 | 945033000.00 | 9134136.34 | 165760979.13 | 1.52 | 10.29 |
| Propiedades, planta y equipo (PPE) | 158 | 0.00 | 30449893000.00 | 3430431674.73 | 6385392274.58 | 2.72 | 7.01 |
| TA | 158 | -5586363000.00 | 751680000.00 | -448270196.89 | 946100446.79 | -3.15 | 10.56 |
| peso_empresa | 158 | 0.32 | 43.64 | 5.96 | 10.48 | 2.75 | 6.88 |
| peso_muj_dir | 116 | 2.44 | 35.23 | 17.56 | 11.25 | 0.32 | -1.22 |
| peso_muj_ejec | 147 | 0.00 | 20.61 | 7.90 | 6.70 | 0.51 | -0.90 |

*Generado automáticamente desde el notebook.*
