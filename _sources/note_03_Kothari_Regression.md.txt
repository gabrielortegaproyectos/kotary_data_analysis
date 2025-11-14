# Regresión de Kothari e Índice de Devengos Discrecionales

<!-- Este archivo documenta los resultados de la regresión de Kothari y el cálculo del índice de devengos discrecionales. -->

**Fuente:** notebooks/03_Calculate_Kothari_Index.ipynb

## Modelo de Regresión

Se implementó la regresión de Kothari conforme a la siguiente ecuación:

$$\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1(\frac{1}{A_{i,t-1}}) + \alpha_2(\frac{(\Delta REV_{i,t} - \Delta REC_{i,t})}{A_{i,t-1}}) + \alpha_3(\frac{PPE_{i,t}}{A_{i,t-1}}) + \alpha_4 ROA_{i,t} + \varepsilon_{i,t}$$

## Parámetros Estimados

| Parámetro | Estimación |
|-----------|------------|
| Intercepto (α₀) | -0.111689 |
| X1 (α₁) | 17953151.664667 |
| X2 (α₂) | 0.152545 |
| X3 (α₃) | -0.030590 |
| X4 (α₄) | 0.004832 |
| R² | 0.289608 |
| Observaciones | 157 |

## Índice de Kothari (Devengos Discrecionales)

El Índice de Kothari corresponde a los residuos de la regresión ($\varepsilon_{i,t}$), que representan la parte de los devengos totales no explicada por el modelo.

| Estadístico | Valor |
|-------------|-------|
| Media | 0.000000 |
| Mediana | 0.028962 |
| Desviación Estándar | 0.166190 |
| Mínimo | -1.168834 |
| Máximo | 0.363380 |
| Skewness | -3.434084 |
| Kurtosis | 19.332551 |

## Interpretación

- **Valores positivos del Índice de Kothari**: Indican que los devengos reales superan lo que el modelo predice como normal, sugiriendo posible manipulación de ganancias hacia el alza.
- **Valores negativos del Índice de Kothari**: Indican que los devengos reales son menores que lo predicho por el modelo, sugiriendo posible manipulación hacia la baja.
- **Valores cercanos a cero**: Indican que los devengos se comportan como lo esperado por el modelo normal.

*Generado automáticamente desde el notebook.*
