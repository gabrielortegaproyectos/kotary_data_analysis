# Índice de Kothari — Matching de variables y guía breve

## Propósito

Esta sección explica cómo mapear las columnas del dataset a las variables necesarias para calcular el índice de Kothari. El objetivo es facilitar la aplicación práctica del índice en el análisis de calidad de reportes financieros.

---

## ¿Qué es el índice de Kothari? (definición breve)

El índice de Kothari (Kothari, Leone & Wasley, 2005) es una medida para evaluar la calidad de los reportes financieros a través de los accruals discrecionales ajustados por desempeño. Se obtiene estimando los accruals totales escalados y explicando su componente no discrecional mediante una regresión tipo Jones extendida; el residual de esa regresión se interpreta como el componente discrecional (nuestro 'índice'):

$$
\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1 \left(\frac{1}{A_{i,t-1}}\right) + \alpha_2 \left(\frac{\Delta REV_{i,t} - \Delta REC_{i,t}}{A_{i,t-1}}\right) + \alpha_3 \left(\frac{PPE_{i,t}}{A_{i,t-1}}\right) + \alpha_4 \, ROA_{i,t} + \varepsilon_{i,t}
$$

Donde:
- $TA_{i,t}$: Devengos totales de la empresa $i$ en el año $t$.
- $A_{i,t-1}$: Activos totales al final del año $t-1$ (en la base de datos corresponde a "Activos total al inicio de anio").
- $\Delta REV_{i,t}$: Cambio en ingresos (ventas) entre $t$ y $t-1$.
- $\Delta REC_{i,t}$: Cambio en cuentas por cobrar entre $t$ y $t-1$.
- $PPE_{i,t}$: Propiedades, planta y equipo.
- $ROA_{i,t}$: Retorno sobre activos.
- $\varepsilon_{i,t}$: Componente no explicado (devengo discrecional).

---

## Matching de variables requeridas y columnas del dataset

Cada variable necesaria para el índice de Kothari, incluyendo los deltas, tiene un equivalente directo en las columnas de la base de datos:

| Variable (Kothari) | Columna en el dataset                        |
| ------------------ | -------------------------------------------- |
| UN                 | UTILIDAD NETA                                |
| CFO                | Flujo efectivo de operación (CFO)            |
| A                  | Activos total al inicio de anio              |
| REV (∆Ingresos)    | Ventas del anio (diferencia)                 |
| REC (∆Ctas. x cobrar) | Cuentas por cobrar (diferencia)           |
| PPE                | Propiedades, planta y equipo (PPE)           |
| ROA                | ROA                                          |
| empresa            | EMPRESA                                      |
| anio               | ANIO                                         |
