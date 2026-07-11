# ==========================================
# 📊 ARCHIVO: analisis.R
# Objetivo: Procesamiento estadístico con limpieza profunda de datos
# ==========================================

# 1. Cargar la base de datos cruda
datos <- read.csv("Base de Datos-Educacion sexual. Grupo 2.csv", sep = ";", stringsAsFactors = FALSE, encoding = "UTF-8")

# 2. Asignar nombres limpios a las columnas
colnames(datos) <- c("ID", "Genero_Padre", "Sexo_Hijo", "Frecuencia_Conversacion", 
                     "Nivel_Interes", "Canal_Preferido", "Frecuencia_Informacion", "Disposicion_Pago")

# 3. Limpieza profunda de espacios en blanco y filas de títulos repetidos
datos[] <- lapply(datos, trimws) # Quita espacios invisibles en todas las celdas
datos <- datos[datos$ID != "" & !is.na(datos$ID), ] # Elimina filas completamente vacías
datos <- datos[datos$Genero_Padre != "Género del padre" & datos$Genero_Padre != "Genero_Padre", ] # Filtra títulos repetidos
datos <- datos[datos$Genero_Padre != "", ] # Elimina cualquier celda fantasma sin texto

# Convertir de nuevo a factores para las tablas de frecuencia
datos[] <- lapply(datos, as.factor)

# 4. Mostrar resultados limpios en la consola

print("=== 1. GÉNERO DEL PADRE / APODERADO ===")
table(datos$Genero_Padre)

print("=== 2. SEXO DEL HIJO/A ADOLESCENTE ===")
table(datos$Sexo_Hijo)

print("=== 3. FRECUENCIA DE CONVERSACIÓN SOBRE ESI ===")
table(datos$Frecuencia_Conversacion)

print("=== 4. NIVEL DE INTERÉS EN TEMAS DE ORIENTACIÓN ===")
table(datos$Nivel_Interes)

print("=== 5. CANAL DIGITAL PREFERIDO ===")
table(datos$Canal_Preferido)

print("=== 6. FRECUENCIA PREFERIDA PARA RECIBIR INFORMACIÓN ===")
table(datos$Frecuencia_Informacion)

print("=== 7. DISPOSICIÓN DE PAGO POR SESIÓN ASESORA ===")
table(datos$Disposicion_Pago)