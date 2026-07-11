Análisis de Resultados y Modelo Estadístico Final

Este repositorio documenta el procesamiento y modelado estadístico realizado sobre la base de datos de 25 encuestados

2. Análisis Estadístico Descriptivo

El presente análisis tiene como finalidad caracterizar la muestra de 25 padres de familia y tutores encuestados, permitiendo identificar patrones en sus hábitos de comunicación, preferencias de canales digitales y disposición económica hacia servicios de orientación en educación sexual..  Para el procesamiento, sistematización y análisis de los datos recopilados en la encuesta, se utiliza el lenguaje de programación R.. A continuación, se presentan los resultados obtenidos mediante los procedimientos estadísticos realizados en dicho entorno, los cuales resumen las tendencias observadas en la población de estudio.

# ==========================================
> # 📊 ARCHIVO: analisis.R
> # Objetivo: Procesamiento estadístico con limpieza profunda de datos
> # ==========================================
> 
> # 1. Cargar la base de datos cruda
> datos <- read.csv("Base de Datos-Educacion sexual. Grupo 2.csv", sep = ";", stringsAsFactors = FALSE, encoding = "UTF-8")
> 
> # 2. Asignar nombres limpios a las columnas
> colnames(datos) <- c("ID", "Genero_Padre", "Sexo_Hijo", "Frecuencia_Conversacion", 
+                      "Nivel_Interes", "Canal_Preferido", "Frecuencia_Informacion", "Disposicion_Pago")
> 
> # 3. Limpieza profunda de espacios en blanco y filas de títulos repetidos
> datos[] <- lapply(datos, trimws) # Quita espacios invisibles en todas las celdas
> datos <- datos[datos$ID != "" & !is.na(datos$ID), ] # Elimina filas completamente vacías
> datos <- datos[datos$Genero_Padre != "Género del padre" & datos$Genero_Padre != "Genero_Padre", ] # Filtra títulos repetidos
> datos <- datos[datos$Genero_Padre != "", ] # Elimina cualquier celda fantasma sin texto
> 
> # Convertir de nuevo a factores para las tablas de frecuencia
> datos[] <- lapply(datos, as.factor)
> 
> # 4. Mostrar resultados limpios en la consola
> 
> print("=== 1. GÉNERO DEL PADRE / APODERADO ===")
[1] "=== 1. GÉNERO DEL PADRE / APODERADO ==="
> table(datos$Genero_Padre)

 Femenino Masculino 
       15        10 
> 
> print("=== 2. SEXO DEL HIJO/A ADOLESCENTE ===")
[1] "=== 2. SEXO DEL HIJO/A ADOLESCENTE ==="
> table(datos$Sexo_Hijo)

Hija Hijo 
  13   12 
> 
> print("=== 3. FRECUENCIA DE CONVERSACIÓN SOBRE ESI ===")
[1] "=== 3. FRECUENCIA DE CONVERSACIÓN SOBRE ESI ==="
> table(datos$Frecuencia_Conversacion)

       A veces Frecuentemente          Nunca       Rara vez        Siempre 
             7              5              1              4              8 
> 
> print("=== 4. NIVEL DE INTERÉS EN TEMAS DE ORIENTACIÓN ===")
[1] "=== 4. NIVEL DE INTERÉS EN TEMAS DE ORIENTACIÓN ==="
> table(datos$Nivel_Interes)

Extremadamente interesado            Muy interesado           Nada interesado 
                        3                        19                         1 
          Poco interesado 
                        2 
> 
> print("=== 5. CANAL DIGITAL PREFERIDO ===")
[1] "=== 5. CANAL DIGITAL PREFERIDO ==="
> table(datos$Canal_Preferido)

 Facebook Instagram  WhatsApp 
        5        10        10 
> 
> print("=== 6. FRECUENCIA PREFERIDA PARA RECIBIR INFORMACIÓN ===")
[1] "=== 6. FRECUENCIA PREFERIDA PARA RECIBIR INFORMACIÓN ==="
> table(datos$Frecuencia_Informacion)

       Cada dos semanas          Todos los días          Una vez al mes 
                      1                       2                       3 
     Una vez por semana Varias veces por semana 
                     12                       7 
> 
> print("=== 7. DISPOSICIÓN DE PAGO POR SESIÓN ASESORA ===")
[1] "=== 7. DISPOSICIÓN DE PAGO POR SESIÓN ASESORA ==="
> table(datos$Disposicion_Pago)

  Más de S/50 Menos de S/20    No pagaría   S/20 a S/50 
            1             7             2            15 
