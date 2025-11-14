# Resultados del Análisis Exploratorio de Datos (EDA) - Hoja 'BASE DE DATOS'

<!-- Este archivo es solo para mostrar resultados del análisis, no debe aparecer como página principal en el menú de la documentación. -->

**Fuente:** notebooks/00_EDA_Sheet1.ipynb

## Dimensiones del Dataset
- Filas: 209
- Columnas: 24

## Valores Faltantes por Columna

| Columna | Valores Faltantes | Porcentaje (%) |
|---------|-------------------|----------------|
| RUT | 0 | 0.00 |
| EMPRESA | 0 | 0.00 |
| COTIZA EN BOLSA | 0 | 0.00 |
| EMP. FAMI | 0 | 0.00 |
| ANIO | 0 | 0.00 |
| UTILIDAD NETA | 1 | 0.48 |
| TOTAL ACTIVOS | 4 | 1.91 |
| PATRIMONIO | 5 | 2.39 |
| UTILIDAD OPERACIONAL | 15 | 7.18 |
| DEPRECIACIÓN Y AMORTIZACIÓN | 10 | 4.78 |
| ROA | 4 | 1.91 |
| ROE | 5 | 2.39 |
| EBDITA | 0 | 0.00 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 1 | 0.48 |
| Total en Directorios | 1 | 0.48 |
| Cantidad de mujeres en otros ejecutivos | 0 | 0.00 |
| Total en otros ejecutivos | 0 | 0.00 |
| Flujo efectivo de operación (CFO) | 40 | 19.14 |
| Activos total al inicio de anio | 39 | 18.66 |
| Ventas | 39 | 18.66 |
| Ventas del anio (diferencia) | 38 | 18.18 |
| Cuentas por cobrar | 43 | 20.57 |
| Cuentas por cobrar (diferencia) | 39 | 18.66 |
| Propiedades, planta y equipo (PPE) | 46 | 22.01 |

## Distribución de Valores Únicos por Columna

| Columna | Valores Únicos |
|---------|----------------|
| RUT | 19 |
| EMPRESA | 19 |
| COTIZA EN BOLSA | 1 |
| EMP. FAMI | 1 |
| ANIO | 11 |
| UTILIDAD NETA | 204 |
| TOTAL ACTIVOS | 200 |
| PATRIMONIO | 198 |
| UTILIDAD OPERACIONAL | 184 |
| DEPRECIACIÓN Y AMORTIZACIÓN | 181 |
| ROA | 203 |
| ROE | 201 |
| EBDITA | 194 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 7 |
| Total en Directorios | 13 |
| Cantidad de mujeres en otros ejecutivos | 7 |
| Total en otros ejecutivos | 28 |
| Flujo efectivo de operación (CFO) | 168 |
| Activos total al inicio de anio | 167 |
| Ventas | 148 |
| Ventas del anio (diferencia) | 150 |
| Cuentas por cobrar | 159 |
| Cuentas por cobrar (diferencia) | 160 |
| Propiedades, planta y equipo (PPE) | 152 |

## Análisis Detallado de Variables Categóricas


### Distribución de 'RUT'
| Valor | Frecuencia |
|-------|------------|
| 76000957-1 | 11 |
| 76079669-7 | 11 |
| 78840880-3 | 11 |
| 96701340-4 | 11 |
| 77116500-1 | 11 |
| 86542100-1 | 11 |
| 96790240-3 | 11 |
| 79587210-8 | 11 |
| 76727040-2 | 11 |
| 96567040-8 | 11 |
| 77762940-9 | 11 |
| 78126110-6 | 11 |
| 89468900-5 | 11 |
| 94621000-5 | 11 |
| 85272800-0 | 11 |
| 85306000-3 | 11 |
| 76038806-8 | 11 |
| 78928380-K | 11 |
| 61704000-K | 11 |

### Porcentajes para 'RUT'
| Valor | Porcentaje (%) |
|-------|-----------------|
| 76000957-1 | 5.26 |
| 76079669-7 | 5.26 |
| 78840880-3 | 5.26 |
| 96701340-4 | 5.26 |
| 77116500-1 | 5.26 |
| 86542100-1 | 5.26 |
| 96790240-3 | 5.26 |
| 79587210-8 | 5.26 |
| 76727040-2 | 5.26 |
| 96567040-8 | 5.26 |
| 77762940-9 | 5.26 |
| 78126110-6 | 5.26 |
| 89468900-5 | 5.26 |
| 94621000-5 | 5.26 |
| 85272800-0 | 5.26 |
| 85306000-3 | 5.26 |
| 76038806-8 | 5.26 |
| 78928380-K | 5.26 |
| 61704000-K | 5.26 |


### Distribución de 'EMPRESA'
| Valor | Frecuencia |
|-------|------------|
| ALGORTA NORTE S.A. | 11 |
| MINERA ANTUCOYA | 11 |
| SOCIEDAD CONTRACTUAL MINERA EL MORRO | 11 |
| SOCIEDAD CONTRACTUAL MINERA EL ABRA | 11 |
| NORTE ABIERTO SPA | 11 |
| MINERA SPENCE S.A. | 11 |
| MINERA LOS PELAMBRES | 11 |
| MINERA ESCONDIDA LIMITADA | 11 |
| MINERA CENTINELA | 11 |
| COMPAÑIA MINERA TECK QUEBRADA BLANCA S.A. | 11 |
| ANGLO AMERICAN SUR S.A. (EX MINERA SUR ANDES LTDA.) | 11 |
| COMPAÑIA MINERA TECK CARMEN DE ANDACOLLO | 11 |
| COMPAÑIA MINERA DOÑA INÉS DE COLLAHUASI SCM | 11 |
| COMPAÑIA MINERA CERRO COLORADO LTDA. | 11 |
| COMPAÑIA CONTRACTUAL MINERA CANDELARIA | 11 |
| COMPAÑIA MINERA NEVADA SPA | 11 |
| COMPAÑIA MINERA MARICUNGA S.A. | 11 |
| COMPAÑIA MINERA MANTOS DE ORO | 11 |
| CODELCO | 11 |

### Porcentajes para 'EMPRESA'
| Valor | Porcentaje (%) |
|-------|-----------------|
| ALGORTA NORTE S.A. | 5.26 |
| MINERA ANTUCOYA | 5.26 |
| SOCIEDAD CONTRACTUAL MINERA EL MORRO | 5.26 |
| SOCIEDAD CONTRACTUAL MINERA EL ABRA | 5.26 |
| NORTE ABIERTO SPA | 5.26 |
| MINERA SPENCE S.A. | 5.26 |
| MINERA LOS PELAMBRES | 5.26 |
| MINERA ESCONDIDA LIMITADA | 5.26 |
| MINERA CENTINELA | 5.26 |
| COMPAÑIA MINERA TECK QUEBRADA BLANCA S.A. | 5.26 |
| ANGLO AMERICAN SUR S.A. (EX MINERA SUR ANDES LTDA.) | 5.26 |
| COMPAÑIA MINERA TECK CARMEN DE ANDACOLLO | 5.26 |
| COMPAÑIA MINERA DOÑA INÉS DE COLLAHUASI SCM | 5.26 |
| COMPAÑIA MINERA CERRO COLORADO LTDA. | 5.26 |
| COMPAÑIA CONTRACTUAL MINERA CANDELARIA | 5.26 |
| COMPAÑIA MINERA NEVADA SPA | 5.26 |
| COMPAÑIA MINERA MARICUNGA S.A. | 5.26 |
| COMPAÑIA MINERA MANTOS DE ORO | 5.26 |
| CODELCO | 5.26 |


### Distribución de 'COTIZA EN BOLSA'
| Valor | Frecuencia |
|-------|------------|
| NO | 209 |

### Porcentajes para 'COTIZA EN BOLSA'
| Valor | Porcentaje (%) |
|-------|-----------------|
| NO | 100.00 |


### Distribución de 'EMP. FAMI'
| Valor | Frecuencia |
|-------|------------|
| NO | 209 |

### Porcentajes para 'EMP. FAMI'
| Valor | Porcentaje (%) |
|-------|-----------------|
| NO | 100.00 |


## Estadísticas Descriptivas de Variables Numéricas

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| ANIO | count | 209.0 |
| ANIO | mean | 2018.0 |
| ANIO | std | 3.1698701744830062 |
| ANIO | min | 2013.0 |
| ANIO | 25% | 2015.0 |
| ANIO | 50% | 2018.0 |
| ANIO | 75% | 2021.0 |
| ANIO | max | 2023.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| UTILIDAD NETA | count | 208.0 |
| UTILIDAD NETA | mean | 312689136.38461536 |
| UTILIDAD NETA | std | 804243691.9754058 |
| UTILIDAD NETA | min | -2191000000.0 |
| UTILIDAD NETA | 25% | -13977500.0 |
| UTILIDAD NETA | 50% | 32803281.0 |
| UTILIDAD NETA | 75% | 346071903.75 |
| UTILIDAD NETA | max | 3889000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| TOTAL ACTIVOS | count | 205.0 |
| TOTAL ACTIVOS | mean | 4992521830.858537 |
| TOTAL ACTIVOS | std | 8834837205.18558 |
| TOTAL ACTIVOS | min | 99508000.0 |
| TOTAL ACTIVOS | 25% | 555722458.0 |
| TOTAL ACTIVOS | 50% | 1744904000.0 |
| TOTAL ACTIVOS | 75% | 5446000000.0 |
| TOTAL ACTIVOS | max | 45166000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| PATRIMONIO | count | 204.0 |
| PATRIMONIO | mean | 2216568090.3186274 |
| PATRIMONIO | std | 3397747971.962991 |
| PATRIMONIO | min | -2732002000.0 |
| PATRIMONIO | 25% | 103420250.0 |
| PATRIMONIO | 50% | 709765640.0 |
| PATRIMONIO | 75% | 3257718423.25 |
| PATRIMONIO | max | 13758000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| UTILIDAD OPERACIONAL | count | 194.0 |
| UTILIDAD OPERACIONAL | mean | 545035061.5618557 |
| UTILIDAD OPERACIONAL | std | 1096097874.9559548 |
| UTILIDAD OPERACIONAL | min | -523643000.0 |
| UTILIDAD OPERACIONAL | 25% | -4271486.5 |
| UTILIDAD OPERACIONAL | 50% | 89515117.0 |
| UTILIDAD OPERACIONAL | 75% | 622250000.0 |
| UTILIDAD OPERACIONAL | max | 6547000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| DEPRECIACIÓN Y AMORTIZACIÓN | count | 199.0 |
| DEPRECIACIÓN Y AMORTIZACIÓN | mean | 329179682.7085427 |
| DEPRECIACIÓN Y AMORTIZACIÓN | std | 673957351.5514902 |
| DEPRECIACIÓN Y AMORTIZACIÓN | min | 0.0 |
| DEPRECIACIÓN Y AMORTIZACIÓN | 25% | 15060000.0 |
| DEPRECIACIÓN Y AMORTIZACIÓN | 50% | 81073698.0 |
| DEPRECIACIÓN Y AMORTIZACIÓN | 75% | 312178500.0 |
| DEPRECIACIÓN Y AMORTIZACIÓN | max | 3832000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| ROA | count | 205.0 |
| ROA | mean | 0.18984517898359365 |
| ROA | std | 20.282810676888854 |
| ROA | min | -114.93010403120935 |
| ROA | 25% | -2.2418642347871027 |
| ROA | 50% | 2.0124940238934634 |
| ROA | 75% | 8.821954859181098 |
| ROA | max | 47.6684361220327 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| ROE | count | 204.0 |
| ROE | mean | -0.8879720677076369 |
| ROE | std | 132.94914714768782 |
| ROE | min | -1385.5102377807134 |
| ROE | 25% | -0.5638293315274184 |
| ROE | 50% | 8.977900231815582 |
| ROE | 75% | 21.89047856041529 |
| ROE | max | 349.541640770665 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| EBDITA | count | 209.0 |
| EBDITA | mean | 819347171.3014354 |
| EBDITA | std | 1535932159.5854762 |
| EBDITA | min | -519307000.0 |
| EBDITA | 25% | 331900.0 |
| EBDITA | 50% | 123265297.0 |
| EBDITA | 75% | 941563000.0 |
| EBDITA | max | 10379000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Cantidad de mujeres en Directorios (incluye suplentes) | count | 208.0 |
| Cantidad de mujeres en Directorios (incluye suplentes) | mean | 1.0625 |
| Cantidad de mujeres en Directorios (incluye suplentes) | std | 1.171702382616828 |
| Cantidad de mujeres en Directorios (incluye suplentes) | min | 0.0 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 25% | 0.0 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 50% | 1.0 |
| Cantidad de mujeres en Directorios (incluye suplentes) | 75% | 2.0 |
| Cantidad de mujeres en Directorios (incluye suplentes) | max | 6.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Total en Directorios | count | 208.0 |
| Total en Directorios | mean | 7.1923076923076925 |
| Total en Directorios | std | 5.008354224706333 |
| Total en Directorios | min | 0.0 |
| Total en Directorios | 25% | 6.0 |
| Total en Directorios | 50% | 7.0 |
| Total en Directorios | 75% | 10.0 |
| Total en Directorios | max | 22.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Cantidad de mujeres en otros ejecutivos | count | 209.0 |
| Cantidad de mujeres en otros ejecutivos | mean | 0.8133971291866029 |
| Cantidad de mujeres en otros ejecutivos | std | 1.255224635194598 |
| Cantidad de mujeres en otros ejecutivos | min | 0.0 |
| Cantidad de mujeres en otros ejecutivos | 25% | 0.0 |
| Cantidad de mujeres en otros ejecutivos | 50% | 0.0 |
| Cantidad de mujeres en otros ejecutivos | 75% | 1.0 |
| Cantidad de mujeres en otros ejecutivos | max | 6.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Total en otros ejecutivos | count | 209.0 |
| Total en otros ejecutivos | mean | 8.564593301435407 |
| Total en otros ejecutivos | std | 6.249376119027426 |
| Total en otros ejecutivos | min | 0.0 |
| Total en otros ejecutivos | 25% | 4.0 |
| Total en otros ejecutivos | 50% | 8.0 |
| Total en otros ejecutivos | 75% | 11.0 |
| Total en otros ejecutivos | max | 33.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Flujo efectivo de operación (CFO) | count | 169.0 |
| Flujo efectivo de operación (CFO) | mean | 802994007.5325444 |
| Flujo efectivo de operación (CFO) | std | 1442149596.685775 |
| Flujo efectivo de operación (CFO) | min | -173458000.0 |
| Flujo efectivo de operación (CFO) | 25% | 6217846.0 |
| Flujo efectivo de operación (CFO) | 50% | 131145000.0 |
| Flujo efectivo de operación (CFO) | 75% | 1111900000.0 |
| Flujo efectivo de operación (CFO) | max | 8301000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Activos total al inicio de anio | count | 170.0 |
| Activos total al inicio de anio | mean | 5055568690.42353 |
| Activos total al inicio de anio | std | 9293409761.88952 |
| Activos total al inicio de anio | min | 0.0 |
| Activos total al inicio de anio | 25% | 371518203.75 |
| Activos total al inicio de anio | 50% | 1600594319.0 |
| Activos total al inicio de anio | 75% | 5388500000.0 |
| Activos total al inicio de anio | max | 45166000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Ventas | count | 170.0 |
| Ventas | mean | 1411065475.4882352 |
| Ventas | std | 2318651548.726728 |
| Ventas | min | -4769165.0 |
| Ventas | 25% | 1221475.0 |
| Ventas | 50% | 389530790.5 |
| Ventas | 75% | 2286647598.5 |
| Ventas | max | 10631000000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Ventas del anio (diferencia) | count | 171.0 |
| Ventas del anio (diferencia) | mean | -14055431.157894736 |
| Ventas del anio (diferencia) | std | 982114957.9369826 |
| Ventas del anio (diferencia) | min | -8839127000.0 |
| Ventas del anio (diferencia) | 25% | -47385000.0 |
| Ventas del anio (diferencia) | 50% | 0.0 |
| Ventas del anio (diferencia) | 75% | 51991497.5 |
| Ventas del anio (diferencia) | max | 5231138000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Cuentas por cobrar | count | 166.0 |
| Cuentas por cobrar | mean | 329312553.7289157 |
| Cuentas por cobrar | std | 630398857.2595217 |
| Cuentas por cobrar | min | 0.0 |
| Cuentas por cobrar | 25% | 15306750.0 |
| Cuentas por cobrar | 50% | 78281645.0 |
| Cuentas por cobrar | 75% | 405917258.0 |
| Cuentas por cobrar | max | 4194350000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Cuentas por cobrar (diferencia) | count | 170.0 |
| Cuentas por cobrar (diferencia) | mean | -13612921.188235294 |
| Cuentas por cobrar (diferencia) | std | 364356875.44945675 |
| Cuentas por cobrar (diferencia) | min | -4194350000.0 |
| Cuentas por cobrar (diferencia) | 25% | -18907396.5 |
| Cuentas por cobrar (diferencia) | 50% | 0.0 |
| Cuentas por cobrar (diferencia) | 75% | 24407990.5 |
| Cuentas por cobrar (diferencia) | max | 945033000.0 |

| Variable | Estadístico | Valor |
|----------|-------------|-------|
| Propiedades, planta y equipo (PPE) | count | 163.0 |
| Propiedades, planta y equipo (PPE) | mean | 3438723112.5153375 |
| Propiedades, planta y equipo (PPE) | std | 6313524590.891139 |
| Propiedades, planta y equipo (PPE) | min | 0.0 |
| Propiedades, planta y equipo (PPE) | 25% | 260090500.0 |
| Propiedades, planta y equipo (PPE) | 50% | 692968000.0 |
| Propiedades, planta y equipo (PPE) | 75% | 3937703771.0 |
| Propiedades, planta y equipo (PPE) | max | 30449893000.0 |

*Generado automáticamente desde el notebook.*
