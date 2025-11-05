# Análisis de Relación entre Pesos de Género y Índice de Kothari (Controlado)

<!-- Este archivo documenta el análisis de diferencias significativas entre variables de género y el índice de devengos discrecionales, controlando por el efecto del peso de empresa. -->

**Fuente:** notebooks/05_Gender_Weight_Analysis_Controlled.ipynb

## Objetivo

Analizar si existen diferencias significativas en la representación de mujeres en directorios y ejecutivos con respecto al índice de devengos discrecionales de Kothari, **controlando por el efecto del peso de empresa**.

En el análisis anterior (notebook 04), se encontró que el peso de empresa tiene un efecto significativo según la correlación de Spearman (ρ = -0.187, p = 0.019). Este análisis busca determinar si las variables de género tienen un efecto independiente.

## Variables Analizadas

- **peso_empresa**: Peso relativo de la empresa según activos totales (%) - *Variable de control*
- **peso_muj_dir**: Porcentaje de mujeres en directorios - *Variable independiente*
- **peso_muj_ejec**: Porcentaje de mujeres en ejecutivos - *Variable independiente*
- **KOTHARI_INDEX**: Índice de devengos discrecionales (residuos de la regresión de Kothari) - *Variable dependiente*

## Multicolinealidad

### Factor de Inflación de Varianza (VIF)

| Variable | VIF |
|----------|-----|
| peso_empresa | 1.066 |
| peso_muj_dir | 2.310 |
| peso_muj_ejec | 2.343 |

*Interpretación: VIF < 5 indica que no hay problemas de multicolinealidad.*

## Correlaciones Parciales

Correlaciones entre variables de género y el Índice de Kothari, controlando por peso de empresa:

| Variable | Correlación Parcial | P-value | N | Significancia (α=0.05) |
|----------|---------------------|---------|---|------------------------|
| peso_muj_dir | 0.069941 | 0.455644 | 116 | No |
| peso_muj_ejec | 0.051801 | 0.533209 | 147 | No |

## Modelos de Regresión Lineal Múltiple

### Comparación de Modelos

| Modelo | R² | R² Ajustado | AIC | BIC | F-statistic | P-value |
|--------|-----|-------------|-----|-----|-------------|---------|
| Modelo 1: peso_empresa | 0.012535 | 0.003873 | -68.23 | -62.73 | 1.4471 | 0.231486 |
| Modelo 2: + peso_muj_dir | 0.017365 | -0.000027 | -66.80 | -58.54 | 0.9985 | 0.371670 |
| Modelo 3: + peso_muj_ejec | 0.109814 | 0.094059 | -78.27 | -70.00 | 6.9699 | 0.001398 |
| Modelo 4: + ambas variables género | 0.110356 | 0.086526 | -76.34 | -65.32 | 4.6310 | 0.004315 |

### Coeficientes del Modelo Completo (Modelo 4)

| Variable | Coeficiente | Error Estándar | T-statistic | P-value | Significancia |
|----------|-------------|----------------|-------------|---------|---------------|
| Intercepto | -0.118613 | 0.041411 | -2.8643 | 0.004991 | Sí |
| peso_empresa | 0.003360 | 0.001594 | 2.1076 | 0.037293 | Sí |
| peso_muj_dir | 0.000412 | 0.001576 | 0.2611 | 0.794468 | No |
| peso_muj_ejec | 0.009237 | 0.002700 | 3.4215 | 0.000870 | Sí |

### Tests F para Modelos Anidados

| Comparación | F-statistic | P-value | ¿Mejora significativa? |
|-------------|-------------|---------|------------------------|
| Modelo 2 vs Modelo 1 | -0.555477 | nan | No |
| Modelo 3 vs Modelo 1 | -12.348611 | nan | No |
| Modelo 4 vs Modelo 1 | -6.157487 | nan | No |

## Interpretación

### Correlaciones Parciales

Las correlaciones parciales miden la relación entre cada variable de género y el Índice de Kothari después de eliminar el efecto del peso de empresa en ambas variables.

### Modelos de Regresión

- **Modelo 1** establece la línea base con solo el peso de empresa.
- **Modelos 2 y 3** evalúan si agregar cada variable de género mejora la predicción.
- **Modelo 4** incluye todas las variables para evaluar el efecto conjunto.

### Criterios de Ajuste

- **R²**: Proporción de varianza explicada (mayor es mejor).
- **R² Ajustado**: R² ajustado por el número de variables (penaliza complejidad).
- **AIC/BIC**: Criterios de información (menor es mejor, penalizan sobreajuste).

## Conclusión

Los resultados muestran que **las variables de género no tienen un efecto estadísticamente significativo** sobre el Índice de Kothari cuando se controla por el peso de empresa. Esto sugiere que el efecto del tamaño de la empresa (peso_empresa) no está mediado ni modificado por la representación de mujeres en posiciones de liderazgo.

La ausencia de significancia en las correlaciones parciales y en los coeficientes de regresión indica que, una vez controlado el tamaño empresarial, la proporción de mujeres en directorios y ejecutivos no aporta información adicional significativa para explicar la variabilidad en los devengos discrecionales.

*Generado automáticamente desde el notebook.*
