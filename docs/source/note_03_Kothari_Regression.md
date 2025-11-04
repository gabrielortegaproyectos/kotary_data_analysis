# Regresión de Kothari e Índice de Devengos Discrecionales

<!-- Este archivo documenta los resultados de la regresión de Kothari y el cálculo del índice de devengos discrecionales. -->

**Fuente:** notebooks/03_Calculate_Kothari_Index.ipynb

## Modelo de Regresión

Se implementó la regresión de Kothari conforme a la siguiente ecuación:

$$\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1(\frac{1}{A_{i,t-1}}) + \alpha_2(\frac{(\Delta REV_{i,t} - \Delta REC_{i,t})}{A_{i,t-1}}) + \alpha_3(\frac{PPE_{i,t}}{A_{i,t-1}}) + \alpha_4 ROA_{i,t} + \varepsilon_{i,t}$$

## Parámetros Estimados

| Parámetro | Estimación |
|-----------|------------|
| Intercepto (α₀) | -0.108147 |
| X1 (α₁) | 14668551.541220 |
| X2 (α₂) | 0.147164 |
| X3 (α₃) | -0.030775 |
| X4 (α₄) | 0.004918 |
| R² | 0.292012 |
| Observaciones | 158 |

## Índice de Kothari (Devengos Discrecionales)

El Índice de Kothari corresponde a los residuos de la regresión ($\varepsilon_{i,t}$), que representan la parte de los devengos totales no explicada por el modelo.

| Estadístico | Valor |
|-------------|-------|
| Media | 0.000000 |
| Mediana | 0.028758 |
| Desviación Estándar | 0.166729 |
| Mínimo | -1.161487 |
| Máximo | 0.372025 |
| Skewness | -3.284794 |
| Kurtosis | 18.312338 |

## Interpretación

- **Valores positivos del Índice de Kothari**: Indican que los devengos reales superan lo que el modelo predice como normal, sugiriendo posible manipulación de ganancias hacia el alza.
- **Valores negativos del Índice de Kothari**: Indican que los devengos reales son menores que lo predicho por el modelo, sugiriendo posible manipulación hacia la baja.
- **Valores cercanos a cero**: Indican que los devengos se comportan como lo esperado por el modelo normal.

*Generado automáticamente desde el notebook.*
