# Versión actual de la Metodología

>> *Esta es la versión actualizada de la Metodología el 06 de noviembre.*

## 2. Metodología


### 2.1 Datos

Este estudio utiliza información proveniente de las memorias anuales disponibles en la Comisión para el Mercado Financiero (CMF) para compañías mineras que operan en Chile. La base de datos comprende los periodos de 2012 a 2023 para cada firma, y en cada uno de estos años se encuentran tanto las variables financieras requeridas por el modelo de Kothari (como utilidades, flujo de efectivo de operación (CFO), ventas, cuentas por cobrar, propiedades, planta y equipo (PPE), y activos totales al inicio del año), como también las variables de diversidad de género (como el número de mujeres en directorios, el número de mujeres en otros cargos ejecutivos, y el total de miembros de los directorios). La unidad de análisis es firma-año, y el universo inicial contempla 19 compañías, pero el conjunto efectivo incluye 16, ya que tres no registran en ningún año las variables mínimas requeridas por la especificación utilizada (véase sección 2.2, Modelo de Kothari). Las firmas del panel tuvieron entre 7 y 11 períodos de observación cada una, lo que asegura que no existen firmas con un número de años de observación excesivamente bajo. El número final de observaciones es de 158 firma-año.

Las variables financieras originales estudiadas incluyen utilidades, flujo de efectivo de operación (CFO), ventas, cuentas por cobrar, propiedades, planta y equipo (PPE), y activos totales al inicio del año $A_{i,t-1}$. La **utilidad neta** tiene una media de (351,922,497) y una desviación estándar de (830,367,945), con una **asimetría** de 1.85 y **curtosis** de 4.90, lo que indica una distribución algo sesgada hacia los valores positivos y colas más gruesas de lo esperado. El **flujo de efectivo de operación (CFO)** tiene una media de (800,192,694) y una desviación estándar de (1,460,381,781), lo que refleja una alta variabilidad en la liquidez operativa de las firmas. Los **activos totales al inicio de año** tienen una media de (4,729,168,484) con una desviación estándar de (8,521,278,551), lo que refleja una significativa heterogeneidad en el tamaño de las empresas. En cuanto a **ventas** y **cuentas por cobrar**, las diferencias en cada año se calculan respecto al periodo anterior: las **ventas** presentan una media de (40,604,506) y una desviación estándar de (680,072,519), mientras que las **cuentas por cobrar** tienen una media de (9,134,136) y una desviación estándar de (165,760,979). Por su parte, **propiedades, planta y equipo (PPE)** muestran una media de (3,430,431,674) y una desviación estándar de (6,385,392,275), con valores que van desde 0 hasta más de (30,000,000,000). El **retorno sobre activos (ROA)** tiene una media de (0.09) y una desviación estándar de (21.70), con una distribución muy sesgada hacia los valores negativos, lo que se confirma con una asimetría de -2.80 y una curtosis de 10.93. Debido a la asimetría y las colas largas de $ROA$, se aplica winsorización bilateral en los percentiles 1 y 99 antes de la estimación. Dada la alta heterogeneidad de los datos en términos de tamaño y operación, se emplea el **escalamiento por activos rezagados** $A_{i,t-1}$ y **estratificación temporal** para asegurar comparabilidad entre firmas de diferente magnitud.

Todas las magnitudes se reportan en millones (M). La utilidad neta promedia 351,92 M ± 830,37 M, el flujo de efectivo de operación (CFO) 800,19 M ± 1.460,38 M, y los activos totales al inicio del año 4.729,17 M ± 8.521,28 M. Las ventas y las cuentas por cobrar se miden como variaciones interanuales y registran promedios de 40,60 M y 9,13 M, respectivamente.

### 2.2 Modelo de Kothari

En términos operativos, la estimación requiere un conjunto mínimo de variables compuesto por flujo de efectivo de la operación (CFO), activos totales al inicio del año $A_{i,t-1}$, variación de ingresos $\Delta REV$, variación en cuentas por cobrar $\Delta REC$ y propiedades, planta y equipo $PPE$. El panel resultante suma 209 observaciones firma-año correspondientes a 16 compañías con covariables completas. Todas las magnitudes se escalan por $A_{i,t-1}$ para favorecer la comparabilidad entre firmas y periodos y reducir la influencia de la heterogeneidad en escala económica. Sobre esta base, los devengos totales se definen como $TA_{i,t} = \text{Utilidad neta}_{i,t} - \text{CFO}_{i,t}$, y la especificación performance-matched de Kothari, Leone y Wasley incorpora el ajuste explícito por desempeño mediante $ROA_{i,t}$. La estimación se implementa mediante mínimos cuadrados ordinarios con varianzas robustas y, en los ejercicios de robustez, efectos fijos de firma.

La especificación empírica se estima por mínimos cuadrados ordinarios sobre panel firma-año, con variables escaladas por $A_{i,t-1}$ y ajuste por desempeño vía $ROA_{i,t}$:

$$
\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1\left(\frac{1}{A_{i,t-1}}\right) + \alpha_2\left(\frac{\Delta REV_{i,t} - \Delta REC_{i,t}}{A_{i,t-1}}\right) + \alpha_3\left(\frac{PPE_{i,t}}{A_{i,t-1}}\right) + \alpha_4 ROA_{i,t} + \varepsilon_{i,t}
$$

Los residuos $\hat{\varepsilon}_{i,t}$ constituyen los devengos discrecionales no ajustados por desempeño. El índice ajustado por desempeño se obtiene restando a $\hat{\varepsilon}_{i,t}$ el residual de la firma emparejada por vecino más cercano en $ROA$ dentro del mismo estrato año-industria. En esta base, el universo corresponde a 19 firmas mineras con seguimiento anual entre 2013 y 2023 (209 observaciones firma-año; panel prácticamente balanceado con 11 observaciones por firma), todas no listadas y no catalogadas como empresas familiares. Dado el foco sectorial, la heterogeneidad industrial se controla estimando la ecuación por año (estratificación temporal) y, donde corresponde, incorporando efectos fijos de firma en análisis de robustez para absorber invarianza tecnológica o de modelo de negocio. Las varianzas se reportan robustas a heterocedasticidad y correlación intracluster a nivel firma.

La medición del componente discrecional por devengos se basa en la especificación ajustada por desempeño de Kothari, Leone y Wasley, con variables escaladas por activos totales rezagados y ajuste explícito por $ROA$. Operacionalmente, los devengos totales se modelan como función del inverso de los activos, el cambio en ventas neto del cambio en cuentas por cobrar, el nivel de $PPE$ y el $ROA$ contemporáneo; los residuos de esta ecuación constituyen el índice de devengos discrecionales. La versión emparejada por desempeño se obtiene restando a cada residual el de la firma más cercana en $ROA$ dentro del mismo estrato año-industria. Esta estrategia reduce sesgos atribuibles a diferencias operativas persistentes y permite la comparación entre empresas y períodos. Su adopción dialoga con la genealogía de modelos de devengos (Jones, 1991; Dechow, Sloan, & Sweeney, 1995; Kasznik, 1999) y con la distinción entre AEM y REM (Roychowdhury, 2006; Kothari, Leone, & Wasley, 2005).  


### 2.3 Análisis

El preprocesamiento garantiza comparabilidad y robustez: (i) consistencia contable de las partidas empleadas en $TA_{i,t}$ entre métodos de flujo y de balance; (ii) winsorización bilateral al 1% de todas las razones escaladas (incluyendo $\frac{TA_{i,t}}{A_{i,t-1}}$, $\frac{\Delta REV_{i,t} - \Delta REC_{i,t}}{A_{i,t-1}}$, $\frac{PPE_{i,t}}{A_{i,t-1}}$ y $ROA_{i,t}$) dada la fuerte curtosis observada en $ROA$ y $ROE$; (iii) exclusión de observaciones con denominadores nulos o negativos; y (iv) chequeos de sensibilidad sustituyendo el emparejamiento por caliper en $ROA$ y usando propensity scores cuando la densidad de $ROA$ es multimodal. La arquitectura empírica resultante (escalamiento por activos rezagados, ajuste por rendimiento, estratificación temporal, matching por desempeño y errores estándar robustos) mitiga sesgos de especificación derivados de diferencias de tamaño, ciclo de inversión o oportunidad de reconocimiento de ingresos y produce una medida del componente discrecional apta para contrastar hipótesis sobre gobernanza y género en un entorno de alta dispersión operativa.

Este estudio adopta un diseño empírico que contrasta la trasladabilidad institucional de métricas estándar de devengos discrecionales en un escenario sectorial particularmente exigente para la inferencia: la gran minería chilena. La unidad de análisis es la firma-año y el período de observación abarca 2013–2023 en un panel prácticamente balanceado. El hilo conductor es histórico-institucional, pero el enfoque analítico preserva estándares de identificación y control propios de la contabilidad empírica y el gobierno corporativo. En coherencia con la introducción, el objetivo es evaluar si la asociación entre diversidad de género en directorios y devengos discrecionales se atenúa o desaparece bajo un régimen productivo intensivo en capital, con fuertes restricciones operativas y contractuales. Esta premisa sitúa la evidencia dentro de un marco comparado que enfatiza la dependencia del instrumento y del contexto regulatorio.  

Las estimaciones se implementan por mínimos cuadrados ordinarios con errores estándar robustos y agrupados por firma, incorporando estratificación anual y, en robusteces, efectos fijos de firma para absorber invarianza tecnológica o de modelo de negocio. Se verificó la consistencia contable entre métodos de flujo y de balance para la construcción de devengos, y se aplicaron pruebas de sensibilidad al procedimiento de emparejamiento (vecino más cercano, caliper en $ROA$ y puntajes de propensión en densidades multimodales). La arquitectura empírica resultante (escalamiento por activos rezagados, ajuste por desempeño, estratificación temporal, emparejamiento por $ROA$ y errores robustos) mitiga sesgos de especificación propios de sectores con alta dispersión operativa. La modelación se alinea con las prácticas del campo y con los lineamientos expuestos en la introducción del manuscrito. En conjunto, estas decisiones metodológicas sostienen la comparabilidad interna requerida para el análisis de asociaciones entre diversidad y calidad del reporte.   

La variable de interés en gobernanza es la participación femenina en directorios, medida anualmente como proporción del total de asientos; en análisis complementarios se considera la presencia de mujeres en cargos ejecutivos y el peso relativo de la empresa. La estrategia de análisis evalúa la asociación entre diversidad y el índice de devengos discrecionales, y examina relaciones no lineales mediante correlaciones de Pearson y Spearman, así como pruebas de diferencias por terciles de representación.  

---

## 2. Metodología

### 2.1 Datos

El estudio utiliza memorias anuales de la Comisión para el Mercado Financiero de Chile para compañías mineras con series entre 2012 y 2023. La unidad de análisis es firma-año. El panel inicial considera 19 compañías y, tras depuración por faltantes en las covariables mínimas, el conjunto efectivo incluye 16 firmas con 158 observaciones. Todas las magnitudes se reportan **en millones (M)** y se **escalan por activos totales rezagados** (A_{i,t-1}). Para mejorar la comparabilidad frente a colas pesadas y asimetrías, se aplica **winsorización bilateral al 1 %**.

En esta escala, la **utilidad neta** promedia **351,92 M ± 830,37 M**, el **flujo de efectivo de operación (CFO)** **800,19 M ± 1.460,38 M**, y los **activos totales al inicio del año** **4.729,17 M ± 8.521,28 M**. Las **ventas** y las **cuentas por cobrar** se consideran como variaciones interanuales y registran promedios de **40,60 M** y **9,13 M**, respectivamente. La elevada dispersión es consistente con la heterogeneidad de tamaño del sector minero, por lo que además de escalar por (A_{i,t-1}) se verifica la consistencia contable entre método de flujo y método de balance para la construcción de devengos.

### 2.2 Variables y construcción de medidas

La variable dependiente es el componente discrecional de los devengos medido con el índice **ajustado por desempeño** de Kothari, Leone y Wasley (2005). Operacionalmente, los **devengos totales** se definen como (TA_{i,t}=\text{Utilidad neta}*{i,t}-\text{CFO}*{i,t}) y se modelan como función del inverso de los activos, del cambio en ventas neto del cambio en cuentas por cobrar y del nivel de propiedades, planta y equipo ((PPE)), incorporando **retorno sobre activos (ROA)** como ajuste explícito por desempeño. El **índice ajustado por desempeño** se obtiene restando a cada residual el residual de la firma “vecina más cercana” en (ROA) dentro del mismo año, lo que reduce sesgos por diferencias operativas persistentes.

Las variables explicativas de gobierno corporativo capturan la **participación de mujeres en directorios** y, en análisis complementarios, la **participación de mujeres en ejecutivos**. Como control de escala se utiliza **peso de empresa** según activos totales.

### 2.3 Especificación y estimación

La ecuación de devengos se estima por **mínimos cuadrados ordinarios** sobre panel firma-año con **errores estándar robustos y agrupados por firma**. Todas las razones se escalan por (A_{i,t-1}) y se incorpora **estratificación temporal** al estimar o al emparejar por desempeño. La especificación base es:
[
\frac{TA_{i,t}}{A_{i,t-1}}=\alpha_0+\alpha_1\left(\frac{1}{A_{i,t-1}}\right)+\alpha_2\left(\frac{\Delta REV_{i,t}-\Delta REC_{i,t}}{A_{i,t-1}}\right)+\alpha_3\left(\frac{PPE_{i,t}}{A_{i,t-1}}\right)+\alpha_4 ROA_{i,t}+\varepsilon_{i,t}.
]
Los residuos (\hat{\varepsilon}_{i,t}) constituyen la medida no ajustada; la versión **performance-matched** resulta de restar el residual de la firma emparejada por (ROA) en el mismo año. En robusteces se consideran **efectos fijos por firma** y variantes clásicas de devengos (Jones modificado; Kasznik).

### 2.4 Plan de análisis

El análisis se estructura en tres pasos. Primero, se **describe** la relación entre el índice de Kothari y las variables de interés mediante **correlaciones de Pearson** y **Spearman**, y se exploran **no linealidades** agrupando la representación femenina y el peso de empresa en **terciles** para comparar medias mediante **ANOVA**. Segundo, se evalúa la **multicolinealidad** entre predictores con **Factor de Inflación de Varianza (VIF)**. Tercero, se estima una **regresión lineal múltiple** del índice de Kothari sobre: (i) sólo peso de empresa, (ii) peso de empresa más participación de mujeres en directorios, (iii) peso de empresa más participación de mujeres en ejecutivos, y (iv) el **modelo conjunto** con ambas variables de género. Se informan (R^2), (R^2) ajustado, estadístico F y criterios AIC/BIC. Como verificación, se calculan **correlaciones parciales** entre cada variable de género y el índice de Kothari **controlando por peso de empresa**.

---



## Referencias

* Adams, R. B., & Ferreira, D. (2009). Women in the boardroom and their impact on governance and performance. Journal of Financial Economics, 94(2), 291–309.
Dechow, P. M., Sloan, R. G., & Sweeney, A. P. (1995). Detecting earnings management. The Accounting Review, 70(2), 193–225.
* Jones, J. J. (1991). Earnings management during import relief investigations. Journal of Accounting Research, 29(2), 193–228.
* Kanter, R. M. (1977). Men and women of the corporation. Basic Books.
Kasznik, R. (1999). On the association between voluntary disclosure and earnings management. Journal of Accounting Research, 37(1), 57–81.
* Kothari, S. P., Leone, A. J., & Wasley, C. (2005). Performance matched discretionary accrual measures. Journal of Accounting and Economics, 39(1), 163–197.
* Leuz, C., Nanda, D., & Wysocki, P. (2003). Earnings management and investor protection: An international comparison. Journal of Financial Economics, 69(3), 505–527.
* Post, C., & Byron, K. (2015). Women on boards and firm financial performance: A meta-analysis. Academy of Management Journal, 58(5), 1546–1571.
* Roychowdhury, S. (2006). Earnings management through real activities manipulation. Journal of Accounting and Economics, 42(3), 335–370.
