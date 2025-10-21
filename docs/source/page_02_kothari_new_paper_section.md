# Nueva versión de la escritura

## Párrafos para la Introducción

En las últimas décadas, la literatura de gobierno corporativo ha mostrado que la calidad de los resultados contables no es un mero reflejo técnico de la actividad económica, sino también un producto de arreglos institucionales, incentivos y estructuras de poder dentro de las firmas. En ese marco, los modelos de devengos discrecionales “ajustados por desempeño” (*performance-matched*) de Kothari, Leone y Wasley se han convertido en un estándar: al controlar rigurosamente por el rendimiento operativo, evitan confundir desempeño económico con manipulación contable y permiten inferencias más válidas sobre la calidad del reporte financiero.

Este enfoque ofrece una vía especialmente fértil para investigaciones con perspectiva de género. Si la composición de directorios y alta gerencia afecta la supervisión interna, el apetito por riesgo o los horizontes de reporte, entonces vincular la diversidad de género con índices de devengos “anormales” ajustados por desempeño permite evaluar si una mayor participación de mujeres se asocia con prácticas de *earnings management* más contenidas. Dado que el índice de Kothari es comparable entre industrias y periodos, los resultados tienen relevancia global, facilitando comparaciones internacionales y aportando evidencia histórica y económica sobre cómo la gobernanza con enfoque de género se traduce —o no— en mayor calidad de la información contable.

## Metodología: modelo de Kothari

Previo a la estimación, se definen las magnitudes contables que estructuran el indicador. Los **devengos totales** ($TA_{i,t}$) se calculan como la diferencia entre la **utilidad neta** y el **flujo de caja operativo** del periodo ($t$) —alternativamente, mediante la aproximación por balance que ajusta por variaciones de activos y pasivos corrientes y por depreciación—. Para estandarizar, todas las variables se escalan por los **activos totales rezagados** ($A_{i,t-1}$), esto es, el nivel de activos al cierre de ($t-1$). La **variación de ingresos** ($\Delta REV_{i,t}$) recoge el cambio en ventas entre ($t$) y ($t-1$), mientras que la **variación en cuentas por cobrar** ($\Delta REC_{i,t}$) depura de dichos ingresos la porción no cobrada. La intensidad de inversión y la naturaleza del negocio se capturan con el stock de **activos fijos** ($PPE_{i,t}$) (propiedades, planta y equipos). Finalmente, el **retorno sobre activos** ($ROA_{i,t}$) resume el desempeño operativo del periodo y es la pieza central del ajuste por rendimiento; el **residuo** ($\varepsilon_{i,t}$) representará el componente discrecional no explicado por fundamentos.

La especificación empírica con escalamiento por activos rezagados es:

$$
\frac{TA_{i,t}}{A_{i,t-1}} = \alpha_0 + \alpha_1\left(\frac{1}{A_{i,t-1}}\right) + \alpha_2\left(\frac{\Delta REV_{i,t}-\Delta REC_{i,t}}{A_{i,t-1}}\right) + \alpha_3\left(\frac{PPE_{i,t}}{A_{i,t-1}}\right) + \alpha_4 ROA_{i,t} + \varepsilon_{i,t}
$$

Los residuos ($\hat{\varepsilon}_{i,t}$) constituyen el devengo discrecional “no ajustado por desempeño”. La versión **ajustada por desempeño** —el índice *performance-matched*— se obtiene restando a ($\hat{\varepsilon}_{i,t}$) el residual de la firma emparejada por industria-año-$ROA$. En la práctica, esto se implementa con estimación separada por industria-año para absorber heterogeneidad sectorial y temporal, winsorización moderada de colas para robustez, y emparejamiento por vecino más cercano en $ROA$ dentro de cada estrato industria-año. Esta arquitectura metodológica reduce sesgos de especificación, mejora la comparabilidad intertemporal e interindustrial y entrega una medida idónea para contrastar hipótesis sobre gobernanza y género.

