# Análisis de Relación entre Pesos de Género y Índice de Kothari

<!-- Este archivo documenta el análisis de diferencias significativas entre variables de peso (representación de mujeres) y el índice de devengos discrecionales. -->

**Fuente:** notebooks/04_Gender_Weight_Analysis.ipynb

## Objetivo

Analizar si existen diferencias significativas en la representación de mujeres en directorios y ejecutivos con respecto al índice de devengos discrecionales de Kothari.

## Variables Analizadas

- **peso_empresa**: Peso relativo de la empresa según activos totales (%)
- **peso_muj_dir**: Porcentaje de mujeres en directorios
- **peso_muj_ejec**: Porcentaje de mujeres en ejecutivos
- **KOTHARI_INDEX**: Índice de devengos discrecionales (residuos de la regresión de Kothari)

## Resultados de Correlación

### Correlación de Pearson

| Variable | Correlación | P-value | Significancia (α=0.05) |
|----------|------------|---------|--------|
| peso_empresa | -0.017602 | 0.826252 | No |
| peso_muj_dir | 0.016933 | 0.856832 | No |
| peso_muj_ejec | 0.051803 | 0.533194 | No |

### Correlación de Spearman (No Paramétrica)

| Variable | Correlación | P-value | Significancia (α=0.05) |
|----------|------------|---------|--------|
| peso_empresa | -0.186937 | 0.018679 | Sí |
| peso_muj_dir | 0.126655 | 0.175480 | No |
| peso_muj_ejec | -0.001316 | 0.987381 | No |

## Análisis de Varianza (ANOVA)

Se categorizaron las variables de peso en terciles (Bajo, Medio, Alto) y se aplicó ANOVA para verificar si existen diferencias significativas en el Índice de Kothari entre categorías.

| Variable | F-statistic | P-value | Significancia (α=0.05) |
|----------|------------|---------|--------|
| peso_empresa | 1.399386 | 0.249848 | No |
| peso_muj_dir | 0.251205 | 0.778296 | No |
| peso_muj_ejec | 0.026556 | 0.973798 | No |

## Interpretación

### Sobre la Significancia Estadística

- Si el **p-value < 0.05**, existe una diferencia estadísticamente significativa.
- Un **p-value ≥ 0.05** indica que no hay evidencia suficiente de diferencia significativa.

### Sobre la Correlación

- **Correlación positiva**: A mayor peso de mujeres, mayor índice de Kothari (más devengos discrecionales).
- **Correlación negativa**: A mayor peso de mujeres, menor índice de Kothari (menos devengos discrecionales).
- **Correlación cercana a cero**: No hay relación lineal entre las variables.

*Generado automáticamente desde el notebook.*
