# Estadísticos Descriptivos de Variables Relevantes Kothari

<!-- Este archivo muestra los estadísticos descriptivos de las variables relevantes para el modelo de Kothari. -->

**Fuente:** notebooks/02_Clean_Data.ipynb

## Resumen de limpieza de datos

En este notebook se realizó la limpieza de la base de datos para el modelo de Kothari. Se identificaron las columnas relevantes, se eliminaron las filas con valores faltantes (NaN) en dichas columnas y aquellas donde los activos totales al inicio del año eran cero. Además, se crearon variables adicionales como el peso relativo de cada empresa y los devengos totales. El resultado es un DataFrame filtrado y listo para el análisis exploratorio y el cálculo de los devengos discrecionales.

## Tabla de Estadísticos

| Variable | N | Minimum | Maximum | Mean | Std. Dev | Skewness | Kurtosis |
|----------|---|---------|---------|------|----------|----------|----------|
| UTILIDAD NETA | 157 | -2191000000.00 | 3889000000.00 | 354450621.03 | 832414890.27 | 1.84 | 4.85 |
| ROA | 157 | -114.93 | 47.67 | 0.34 | 21.53 | -2.88 | 11.51 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 157 | 0.00 | 6.00 | 0.97 | 1.17 | 1.15 | 1.15 |
| Total en Directorios | 157 | 0.00 | 14.00 | 6.18 | 4.60 | -0.03 | -1.01 |
| Cantidad de mujeres en otros ejecutivos | 157 | 0.00 | 6.00 | 0.67 | 1.14 | 2.24 | 5.15 |
| Total en otros ejecutivos | 157 | 0.00 | 33.00 | 7.66 | 5.59 | 1.12 | 2.10 |
| Flujo efectivo de operación (CFO) | 157 | -173458000.00 | 8301000000.00 | 805232373.31 | 1463676033.17 | 2.46 | 6.40 |
| Activos total al inicio de anio | 157 | 152153000.00 | 40824000000.00 | 4758469213.66 | 8540558129.81 | 2.88 | 7.81 |
| Ventas | 157 | -4769165.00 | 10631000000.00 | 1380676083.04 | 2307879334.18 | 2.26 | 4.97 |
| Cuentas por cobrar | 157 | 0.00 | 4194350000.00 | 321884152.85 | 643147674.58 | 3.40 | 12.91 |
| Ventas del anio (diferencia) | 157 | -2797000000.00 | 5231138000.00 | 40858636.99 | 682241230.32 | 2.51 | 22.64 |
| Cuentas por cobrar (diferencia) | 157 | -603143000.00 | 945033000.00 | 9192315.55 | 166289797.27 | 1.51 | 10.20 |
| Propiedades, planta y equipo (PPE) | 157 | 0.00 | 30449893000.00 | 3452093379.66 | 6399999053.76 | 2.71 | 6.95 |
| TA | 157 | -5586363000.00 | 751680000.00 | -450781752.29 | 948599428.69 | -3.14 | 10.47 |
| peso_empresa | 157 | 0.32 | 43.64 | 5.99 | 10.50 | 2.74 | 6.81 |
| peso_muj_dir | 115 | 2.44 | 35.23 | 17.56 | 11.38 | 0.34 | -1.23 |
| peso_muj_ejec | 146 | 0.00 | 20.61 | 7.95 | 6.69 | 0.50 | -0.91 |

*Generado automáticamente desde el notebook.*
