# Resultados del Análisis Exploratorio de Datos (EDA) - Hoja 'LISTADO EMPRESA'

<!-- Este archivo es solo para mostrar resultados del análisis, no debe aparecer como página principal en el menú de la documentación. -->

**Fuente:** notebooks/01_EDA_Sheet2.ipynb

## Dimensiones del Dataset
- Filas: 35
- Columnas: 8

## Valores Faltantes por Columna

| Columna | Valores Faltantes | Porcentaje (%) |
|---------|-------------------|----------------|
| RUT | 0 | 0.00 |
| EMPRESA | 0 | 0.00 |
| PAÍS DE ORIGEN | 0 | 0.00 |
| ORIGEN NACIONAL | 0 | 0.00 |
| PROPIETARIO PRINCIPAL | 0 | 0.00 |
| PROPIETARIO NACIONAL | 0 | 0.00 |
| TIPO DE EMPRESA | 0 | 0.00 |
| TIPO DE MINERAL | 0 | 0.00 |

## Distribución de Valores Únicos por Columna

| Columna | Valores Únicos |
|---------|----------------|
| RUT | 35 |
| EMPRESA | 35 |
| PAÍS DE ORIGEN | 4 |
| ORIGEN NACIONAL | 2 |
| PROPIETARIO PRINCIPAL | 18 |
| PROPIETARIO NACIONAL | 2 |
| TIPO DE EMPRESA | 2 |
| TIPO DE MINERAL | 12 |

## Análisis Detallado de Variables Categóricas


--- Variable 'RUT' ---
Tiene 35 valores únicos (demasiados para mostrar distribución completa).
Primeros 10 valores más frecuentes:
| Valor | Frecuencia |
|-------|------------|
| 76000957-1 | 1 |
| 78338570-8 | 1 |
| 96790240-3 | 1 |
| 99529080-4 | 1 |
| 86542100-1 | 1 |
| 77116500-1 | 1 |
| 99531960-8 | 1 |
| 76081590-K | 1 |
| 96701340-4 | 1 |
| 79587210-8 | 1 |


--- Variable 'EMPRESA' ---
Tiene 35 valores únicos (demasiados para mostrar distribución completa).
Primeros 10 valores más frecuentes:
| Valor | Frecuencia |
|-------|------------|
| ALGORTA NORTE S.A. | 1 |
| SOCIEDAD CONTRACTUAL MINERA ATACAMA MINERALS CHILE | 1 |
| MINERA LOS PELAMBRES | 1 |
| MINERA SANTO DOMINGO SCM | 1 |
| MINERA SPENCE S.A. | 1 |
| NORTE ABIERTO SPA | 1 |
| SCM MINERA LUMINA COPPER CHILE | 1 |
| SIERRA GORDA SCM | 1 |
| SOCIEDAD CONTRACTUAL MINERA EL ABRA | 1 |
| MINERA ESCONDIDA LIMITADA | 1 |


### Distribución de 'PAÍS DE ORIGEN'
| Valor | Frecuencia |
|-------|------------|
| CHILE | 32 |
| CANADÁ | 1 |
| AUSTRALIA | 1 |
| JAPÓN | 1 |

### Porcentajes para 'PAÍS DE ORIGEN'
| Valor | Porcentaje (%) |
|-------|-----------------|
| CHILE | 91.43 |
| CANADÁ | 2.86 |
| AUSTRALIA | 2.86 |
| JAPÓN | 2.86 |


### Distribución de 'ORIGEN NACIONAL'
| Valor | Frecuencia |
|-------|------------|
| SI | 32 |
| NO | 3 |

### Porcentajes para 'ORIGEN NACIONAL'
| Valor | Porcentaje (%) |
|-------|-----------------|
| SI | 91.43 |
| NO | 8.57 |


### Distribución de 'PROPIETARIO PRINCIPAL'
| Valor | Frecuencia |
|-------|------------|
| CHILE | 6 |
| CANADÁ | 6 |
| CHILE Y JAPÓN | 4 |
| CANADÁ Y JAPÓN | 2 |
| AUSTRALIA | 2 |
| JAPÓN | 2 |
| REINO UNIDO | 2 |
| AUSTRALIA Y REINO UNIDO | 1 |
| EEUU Y CHILE | 1 |
| POLONIA Y JAPÓN | 1 |
| CANADÁ Y EEUU | 1 |
| SUIZA | 1 |
| SUDRÁFRICA | 1 |
| CANADÁ Y CHILE | 1 |
| REINO UNIDO, SUIZA, JAPÓN | 1 |
| CHILE Y CANADÁ | 1 |
| POLONIA | 1 |
| EEUU | 1 |

### Porcentajes para 'PROPIETARIO PRINCIPAL'
| Valor | Porcentaje (%) |
|-------|-----------------|
| CHILE | 17.14 |
| CANADÁ | 17.14 |
| CHILE Y JAPÓN | 11.43 |
| CANADÁ Y JAPÓN | 5.71 |
| AUSTRALIA | 5.71 |
| JAPÓN | 5.71 |
| REINO UNIDO | 5.71 |
| AUSTRALIA Y REINO UNIDO | 2.86 |
| EEUU Y CHILE | 2.86 |
| POLONIA Y JAPÓN | 2.86 |
| CANADÁ Y EEUU | 2.86 |
| SUIZA | 2.86 |
| SUDRÁFRICA | 2.86 |
| CANADÁ Y CHILE | 2.86 |
| REINO UNIDO, SUIZA, JAPÓN | 2.86 |
| CHILE Y CANADÁ | 2.86 |
| POLONIA | 2.86 |
| EEUU | 2.86 |


### Distribución de 'PROPIETARIO NACIONAL'
| Valor | Frecuencia |
|-------|------------|
| NO | 22 |
| SI | 13 |

### Porcentajes para 'PROPIETARIO NACIONAL'
| Valor | Porcentaje (%) |
|-------|-----------------|
| NO | 62.86 |
| SI | 37.14 |


### Distribución de 'TIPO DE EMPRESA'
| Valor | Frecuencia |
|-------|------------|
| PÚBLICA | 31 |
| PRIVADA | 4 |

### Porcentajes para 'TIPO DE EMPRESA'
| Valor | Porcentaje (%) |
|-------|-----------------|
| PÚBLICA | 88.57 |
| PRIVADA | 11.43 |


### Distribución de 'TIPO DE MINERAL'
| Valor | Frecuencia |
|-------|------------|
| COBRE | 15 |
| COBRE, ORO | 6 |
| COBRE, MOLIBDENO | 3 |
| ORO | 2 |
| ORO, PLATA | 2 |
| YODO | 1 |
| ORO, PLATA, ZINC | 1 |
| COBRE. HIERRO | 1 |
| YODO, LITIO | 1 |
| NITRATO, YODO | 1 |
| LITIO | 1 |
| LITIO, COBRE | 1 |

### Porcentajes para 'TIPO DE MINERAL'
| Valor | Porcentaje (%) |
|-------|-----------------|
| COBRE | 42.86 |
| COBRE, ORO | 17.14 |
| COBRE, MOLIBDENO | 8.57 |
| ORO | 5.71 |
| ORO, PLATA | 5.71 |
| YODO | 2.86 |
| ORO, PLATA, ZINC | 2.86 |
| COBRE. HIERRO | 2.86 |
| YODO, LITIO | 2.86 |
| NITRATO, YODO | 2.86 |
| LITIO | 2.86 |
| LITIO, COBRE | 2.86 |


## Estadísticas Descriptivas de Variables Numéricas

*Generado automáticamente desde el notebook.*
