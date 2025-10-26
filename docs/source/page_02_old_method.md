# Vieja versión: Párrafo metodología - Kotari

## ¿Qué es el modelo de Kothari?
El modelo de Kothari, Leonel y Wesley (2005) es una mejora de los modelos de devengos discrecionales (como el de Jones o Jones modificado) y se utiliza ampliamente para estudiar manipulación de resultados contables o earnings management. Su objetivo principal es estimar los devengos discrecionales con mayor precisión, controlando por el desempeño económico de la empresa. Se adjunta paper original del autor.

### ¿Qué hace diferente a este modelo?
El modelo introduce un ajuste por rendimiento (performance matching), lo cual reduce sesgos al comparar empresas con distinto rendimiento. Esto se logra mediante una variable clave:
- **ROA (Return on Assets o retorno sobre activos):** se usa para igualar firmas por desempeño operativo, ya que el rendimiento afecta naturalmente los devengos. Empresas con mejor desempeño tienden a mostrar mayores devengos “normales”, por lo que es clave controlar por esto para no sobreestimar manipulaciones.

### Variables principales
El modelo se basa en el cálculo de los devengos totales y luego estima los devengos no discrecionales (los normales o esperados) usando regresiones. Entre las variables clave están:
- $TA$ (Total Accruals/Devengos totales): diferencia entre utilidad neta y flujo de caja operativo.
- $\frac{1}{Assets}$: activos totales del año anterior, para estandarizar.
- $Revenue$: cambio en ingresos.
- $PPE$: activos fijos brutos (Propiedades, planta y equipos).
- $ROA$: rendimiento sobre activos (usado para el matching).

La fórmula de Kothari es similar a la del modelo de Jones modificado, pero con un ajuste adicional usando el ROA del año corriente o anterior.

### ¿Para qué sirve?
- Detectar manipulación contable más confiablemente, especialmente cuando el rendimiento de las empresas varía mucho.
- Identificar devengos anormales, es decir, aquellos que no se explican
- Es útil en estudios sobre ofertas de acciones, cambios regulatorios, cambios de auditoría, entre otros eventos donde puede haber incentivos para alterar las cifras contables.

### Análisis aplicado
Con el objetivo de detectar posibles prácticas de manipulación de resultados contables, se aplicará el modelo propuesto por Kothari, Leone y Wasley (2005), el cual extiende el modelo de Jones modificado (Dechow et al., 1995) mediante la incorporación del rendimiento sobre activos (ROA) como variable de control.

Este modelo permite estimar los devengos, ajustando por el desempeño financiero de la empresa, y obtener así una medida más precisa de los devengos discrecionales. La especificación del modelo es la siguiente:

$$
\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1(\frac{1}{A_{i,t-1}}) + \alpha_2(\frac{(\Delta REV_{i,t} - \Delta REC_{i,t})}{A_{i,t-1}}) + \alpha_3(\frac{PPE_{i,t}}{A_{i,t-1}}) + \alpha_4 ROA_{i,t} + \varepsilon_{i,t}
$$

Donde:
- $TA_{i,t}$: Devengos totales de la empresa $i$ en el año $t$
- $A_{i,t}$: Activos totales al final del año $t-1$
- $\Delta REV_{i,t}$: Cambio en ingresos (ventas) entre $t$ y $t-1$
- $\Delta REC_{i,t}$: Cambio en cuentas por cobrar entre $t$ y $t-1$
- $PPE_{i,t}$: Propiedades, planta y equipo
- $ROA_{i,t}$: Retorno sobre activos
- $\varepsilon_{i,t}$: Componente no explicado (devengo discrecional)

