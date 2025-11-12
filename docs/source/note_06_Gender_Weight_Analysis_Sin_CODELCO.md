# Análisis de Relación entre Pesos de Género y Índice de Kothari (Sin CODELCO)

<!-- Este archivo documenta el análisis de diferencias significativas entre variables de peso (representación de mujeres) y el índice de devengos discrecionales, excluyendo a CODELCO. -->

**Fuente:** notebooks/06_Gender_Weight_Analysis_Sin_CODELCO.ipynb

## Objetivo

Analizar si existen diferencias significativas en la representación de mujeres en directorios y ejecutivos con respecto al índice de devengos discrecionales de Kothari, excluyendo los datos de la empresa CODELCO para verificar si esta empresa tiene un impacto desproporcionado en los resultados.

## Variables Analizadas

- **peso_empresa**: Peso relativo de la empresa según activos totales (%)
- **peso_muj_dir**: Porcentaje de mujeres en directorios
- **peso_muj_ejec**: Porcentaje de mujeres en ejecutivos
- **KOTHARI_INDEX**: Índice de devengos discrecionales (residuos de la regresión de Kothari)

## Resultados de Correlación

### Correlación de Pearson

| Variable | Correlación | P-value | Significancia (α=0.05) |
|----------|------------|---------|--------|
| peso_empresa | -0.174770 | 0.033626 | Sí |
| peso_muj_dir | 0.021563 | 0.826337 | No |
| peso_muj_ejec | 0.075796 | 0.378691 | No |

### Correlación de Spearman (No Paramétrica)

| Variable | Correlación | P-value | Significancia (α=0.05) |
|----------|------------|---------|--------|
| peso_empresa | -0.239926 | 0.003313 | Sí |
| peso_muj_dir | 0.177723 | 0.068362 | No |
| peso_muj_ejec | 0.028893 | 0.737505 | No |

## Análisis de Varianza (ANOVA)

Se categorizaron las variables de peso en terciles (Bajo, Medio, Alto) y se aplicó ANOVA para verificar si existen diferencias significativas en el Índice de Kothari entre categorías.

| Variable | F-statistic | P-value | Significancia (α=0.05) |
|----------|------------|---------|--------|
| peso_empresa | 1.479343 | 0.231205 | No |
| peso_muj_dir | 0.228103 | 0.796444 | No |
| peso_muj_ejec | 0.118991 | 0.887909 | No |

## Interpretación

### Sobre la Significancia Estadística

- Si el **p-value < 0.05**, existe una diferencia estadísticamente significativa.
- Un **p-value ≥ 0.05** indica que no hay evidencia suficiente de diferencia significativa.

### Sobre la Correlación

- **Correlación positiva**: A mayor peso de mujeres, mayor índice de Kothari (más devengos discrecionales).
- **Correlación negativa**: A mayor peso de mujeres, menor índice de Kothari (menos devengos discrecionales).
- **Correlación cercana a cero**: No hay relación lineal entre las variables.

## Comparación con Análisis Completo

Este análisis excluye a CODELCO para determinar si esta empresa tiene un impacto desproporcionado en los resultados. Compare estos resultados con el notebook 04 (análisis con todas las empresas) para identificar diferencias significativas.

*Generado automáticamente desde el notebook.*
