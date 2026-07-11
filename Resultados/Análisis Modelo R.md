3. Análisis Estadístico del MODELO.R

Para el procesamiento sistemático de los datos, se implementó el entorno de programación R , permitiendo un cálculo preciso de los estadísticos descriptivos. A continuación, se detalla la salida obtenida tras la ejecución del código en la consola:

El procesamiento realizado en R permite confirmar que la mayoría de los indicadores presentan una tendencia central clara, reflejando el comportamiento predominante de la muestra.

# ==========================================
> # 🎯 ARCHIVO: modelo.R
> # Objetivo: Ajustar el Modelo Descriptivo Final de Viabilidad
> # ==========================================
> 
> # 1. Cargar la base de datos cruda
> datos <- read.csv("Base de Datos-Educacion sexual. Grupo 2.csv", sep = ";", stringsAsFactors = FALSE, encoding = "UTF-8")
> 
> # 2. Asignar nombres limpios a las columnas
> colnames(datos) <- c("ID", "Genero_Padre", "Sexo_Hijo", "Frecuencia_Conversacion", 
+                      "Nivel_Interes", "Canal_Preferido", "Frecuencia_Informacion", "Disposicion_Pago")
> 
> # 3. Limpieza profunda de datos (Igual que en el análisis)
> datos[] <- lapply(datos, trimws)
> datos <- datos[datos$ID != "" & !is.na(datos$ID), ]
> datos <- datos[datos$Genero_Padre != "Género del padre" & datos$Genero_Padre != "Genero_Padre", ]
> datos <- datos[datos$Genero_Padre != "", ]
> 
> # 4. Función auxiliar para calcular la moda estadística automáticamente
> calcular_moda <- function(v) {
+   uniqv <- unique(v)
+   uniqv[which.max(tabulate(match(v, uniqv)))]
+ }
> 
> # 5. Consolidación y construcción del Perfil Objetivo del Proyecto
> modelo_final <- list(
+   Perfil_Padre_Objetivo = calcular_moda(datos$Genero_Padre),
+   Sexo_Hijo_Impacto     = calcular_moda(datos$Sexo_Hijo),
+   Frecuencia_ESI_Actual = calcular_moda(datos$Frecuencia_Conversacion),
+   Nivel_Interes_Padres  = calcular_moda(datos$Nivel_Interes),
+   Canal_Distribucion    = calcular_moda(datos$Canal_Preferido),
+   Frecuencia_Contenido  = calcular_moda(datos$Frecuencia_Informacion),
+   Rango_Precios_Sesion  = calcular_moda(datos$Disposicion_Pago)
+ )
> 
> print("=== PARÁMETROS DEL MODELO FINAL DE VIABILIDAD ===")
[1] "=== PARÁMETROS DEL MODELO FINAL DE VIABILIDAD ==="
> print(modelo_final)
$Perfil_Padre_Objetivo
[1] "Femenino"

$Sexo_Hijo_Impacto
[1] "Hija"

$Frecuencia_ESI_Actual
[1] "Siempre"

$Nivel_Interes_Padres
[1] "Muy interesado"

$Canal_Distribucion
[1] "Instagram"

$Frecuencia_Contenido
[1] "Una vez por semana"

$Rango_Precios_Sesion
[1] "S/20 a S/50"
