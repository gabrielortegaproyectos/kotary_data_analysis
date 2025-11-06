# Versión actual de la Metodología

>> *Esta es la versión actualizada de la Metodología el 05 de noviembre.*

## 2. Metodología


### 2.1 Datos

Este estudio utiliza información proveniente de las memorias anuales disponibles en la Comisión para el Mercado Financiero (CMF) para compañías mineras que operan en Chile. El periodo de recolección abarca 2012–2023 y la unidad de análisis es firma-año; debido al uso de rezagos, la ventana efectiva de estimación es 2013–2023. El universo inicial contempla 19 compañías, pero el conjunto analítico incluye 16, pues tres no registran en ningún año las variables mínimas requeridas por la especificación utilizada (véase sección 2.2, Modelo de Kothari). El panel resultante suma 209 observaciones firma-año.

Las variables financieras estudiadas incluyen utilidades, CFO, ventas, cuentas por cobrar, PPE y (A_{i,t-1}), todas escaladas por activos rezagados. Los devengos totales se definen como (TA_{i,t}=\text{Utilidad neta}*{i,t}-\text{CFO}*{i,t}); la variación de ingresos como (\Delta REV_{i,t}=REV_{i,t}-REV_{i,t-1}) y la variación en cuentas por cobrar como (\Delta REC_{i,t}=REC_{i,t}-REC_{i,t-1}). La base presenta ausencias moderadas en (\Delta REV) y (\Delta REC) (18,18% y 18,66%, respectivamente) y en (PPE) (22,01%), por lo que el análisis se realiza sobre el subpanel con covariables completas y con (A_{i,t-1}) estrictamente positivo. Dada la asimetría y colas largas de (ROA), se aplica winsorización bilateral en los percentiles 1 y 99 antes de la estimación. Las magnitudes brutas confirman elevada heterogeneidad en escala (por ejemplo, activos totales, PPE, ventas y CFO), lo que refuerza el uso de escalamiento por (A_{i,t-1}) y la estratificación temporal. Con estos criterios de depuración, el conjunto queda listo para la estimación del modelo de Kothari y los análisis de asociación con la participación femenina en altos cargos.

### 2.2 Modelo de Kothari

En términos operativos, la estimación requiere un conjunto mínimo de variables compuesto por flujo de efectivo de la operación (CFO), activos totales al inicio del año (A_{i,t-1}), variación de ingresos (\Delta REV), variación en cuentas por cobrar (\Delta REC) y propiedades, planta y equipo (PPE). El panel resultante suma 209 observaciones firma-año correspondientes a 16 compañías con covariables completas. Todas las magnitudes se escalan por (A_{i,t-1}) para favorecer la comparabilidad entre firmas y periodos y reducir la influencia de la heterogeneidad en escala económica. Sobre esta base, los devengos totales se definen como (TA_{i,t}=\text{Utilidad neta}*{i,t}-\text{CFO}*{i,t}), y la especificación *performance-matched* de Kothari, Leone y Wasley incorpora el ajuste explícito por desempeño mediante (ROA_{i,t}). La estimación se implementa mediante mínimos cuadrados ordinarios con varianzas robustas y, en los ejercicios de robustez, efectos fijos de firma.

Párrafo con la ecuación de Kothari y definición del residual
→ Modelo de Kothari (Especificación y construcción del índice)

La especificación empírica se estima por mínimos cuadrados ordinarios sobre panel firma-año, con variables escaladas por $A_{i,t-1}$ y ajuste por desempeño vía $ROA_{i,t}$:

$$
\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1\left(\frac{1}{A_{i,t-1}}\right) + \alpha_2\left(\frac{\Delta REV_{i,t}-\Delta REC_{i,t}}{A_{i,t-1}}\right) + \alpha_3\left(\frac{PPE_{i,t}}{A_{i,t-1}}\right) + \alpha_4 ROA_{i,t} + \varepsilon_{i,t}.
$$
.

Los residuos $\hat{\varepsilon}_{i,t}$ constituyen los **devengos discrecionales no ajustados por desempeño**. El índice **ajustado por desempeño** se obtiene restando a $\hat{\varepsilon}_{i,t}$ el residual de la firma emparejada por vecino más cercano en $ROA$ dentro del mismo estrato año-industria. En esta base, el universo corresponde a 19 firmas mineras con seguimiento anual entre 2013 y 2023 (209 observaciones firma-año; panel prácticamente balanceado con 11 observaciones por firma), todas no listadas y no catalogadas como empresas familiares. Dado el foco sectorial, la heterogeneidad industrial se controla estimando la ecuación por año (estratificación temporal) y, donde corresponde, incorporando efectos fijos de firma en análisis de robustez para absorber invarianza tecnológica o de modelo de negocio. Las varianzas se reportan robustas a heterocedasticidad y correlación intracluster a nivel firma.

Párrafo de medición del componente discrecional con Kothari y genealogía (Jones/Dechow/Kasznik/REM)
→ Modelo de Kothari (Especificación y construcción del índice).

La medición del componente discrecional por devengos se basa en la especificación ajustada por desempeño de Kothari, Leone y Wasley, con variables escaladas por activos totales rezagados y ajuste explícito por ROA. Operacionalmente, los devengos totales se modelan como función del inverso de los activos, el cambio en ventas neto del cambio en cuentas por cobrar, el nivel de PPE y el ROA contemporáneo; los residuos de esta ecuación constituyen el índice de devengos discrecionales. La versión emparejada por desempeño se obtiene restando a cada residual el de la firma más cercana en ROA dentro del mismo estrato año-industria. Esta estrategia reduce sesgos atribuibles a diferencias operativas persistentes y permite la comparación entre empresas y períodos. Su adopción dialoga con la genealogía de modelos de devengos (Jones, 1991; Dechow, Sloan, & Sweeney, 1995; Kasznik, 1999) y con la distinción entre AEM y REM (Roychowdhury, 2006; Kothari, Leone, & Wasley, 2005).  


### 2.3 Análisis

Párrafo sobre matching por ROA, universo de 19 firmas/209 observaciones, estratificación temporal, efectos fijos y errores robustos
→ Análisis (Estrategia de estimación y diseño empírico).
Nota: la frase “En esta base, el universo corresponde a 19 firmas…” encaja mejor en Data; puedes mover solo esa oración al párrafo 1).

El preprocesamiento garantiza comparabilidad y robustez: (i) consistencia contable de las partidas empleadas en (TA_{i,t}) entre métodos de flujo y de balance; (ii) winsorización bilateral al 1% de todas las razones escaladas (incluyendo (TA/A_{t-1}), ((\Delta REV-\Delta REC)/A_{t-1}), (PPE/A_{t-1}) y (ROA)) dada la fuerte curtosis observada en ROA y ROE; (iii) exclusión de observaciones con denominadores nulos o negativos; y (iv) chequeos de sensibilidad sustituyendo el emparejamiento por *caliper* en (ROA) y usando *propensity scores* cuando la densidad de (ROA) es multimodal. La arquitectura empírica resultante —escalamiento por activos rezagados, ajuste por rendimiento, estratificación temporal, *matching* por desempeño y errores estándar robustos— mitiga sesgos de especificación derivados de diferencias de tamaño, ciclo de inversión o oportunidad de reconocimiento de ingresos, y produce una medida del componente discrecional apta para contrastar hipótesis sobre gobernanza y género en un entorno de alta dispersión operativa.

Párrafo de encuadre (diseño, objetivo, lógica histórico-institucional)
→ Análisis (Diseño general y pregunta de investigación).

Este estudio adopta un diseño empírico que contrasta la trasladabilidad institucional de métricas estándar de devengos discrecionales en un escenario sectorial particularmente exigente para la inferencia: la gran minería chilena. La unidad de análisis es la firma-año y el período de observación abarca 2013–2023 en un panel prácticamente balanceado. El hilo conductor es histórico-institucional, pero el enfoque analítico preserva estándares de identificación y control propios de la contabilidad empírica y el gobierno corporativo. En coherencia con la introducción, el objetivo es evaluar si la asociación entre diversidad de género en directorios y devengos discrecionales se atenúa o desaparece bajo un régimen productivo intensivo en capital, con fuertes restricciones operativas y contractuales. Esta premisa sitúa la evidencia dentro de un marco comparado que enfatiza la dependencia del instrumento y del contexto regulatorio.  


Párrafo de implementación: MCO, errores agrupados, estratificación anual, efectos fijos y sensibilidades del matching
→ Análisis (Estrategia de estimación y robusteces).

Las estimaciones se implementan por mínimos cuadrados ordinarios con errores estándar robustos y agrupados por firma, incorporando estratificación anual y, en robusteces, efectos fijos de firma para absorber invarianza tecnológica o de modelo de negocio. Se verificó la consistencia contable entre métodos de flujo y de balance para la construcción de devengos, y se aplicaron pruebas de sensibilidad al procedimiento de emparejamiento (vecino más cercano, caliper en ROA y puntajes de propensión en densidades multimodales). La arquitectura empírica resultante —escalamiento por activos rezagados, ajuste por desempeño, estratificación temporal, emparejamiento por ROA y errores robustos— mitiga sesgos de especificación propios de sectores con alta dispersión operativa. La modelación se alinea con las prácticas del campo y con los lineamientos expuestos en la introducción del manuscrito. En conjunto, estas decisiones metodológicas sostienen la comparabilidad interna requerida para el análisis de asociaciones entre diversidad y calidad del reporte.   

Párrafo sobre variable de interés (participación femenina), variables complementarias y pruebas (correlaciones, terciles)
→ Análisis (Plan analítico e inferencia).

La variable de interés en gobernanza es la participación femenina en directorios, medida anualmente como proporción del total de asientos; en análisis complementarios se considera la presencia de mujeres en cargos ejecutivos y el peso relativo de la empresa. La estrategia de análisis evalúa la asociación entre diversidad y el índice de devengos discrecionales, y examina relaciones no lineales mediante correlaciones de Pearson y Spearman, así como pruebas de diferencias por terciles de representación.  



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
