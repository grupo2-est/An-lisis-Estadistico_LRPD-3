# Análisis Estadístico_LRPD-3

Este repositorio fue creado como parte de la asignatura de Estadística para documentar y compartir el proceso de análisis de datos del proyecto de investigación.

## Descripción
Este repositorio documenta el análisis estadístico y la sistematización del proyecto de investigación **"Psicología preventiva en el ámbito digital: educación sexual para adolescentes mediante redes sociales"**. El objetivo es presentar el procesamiento de datos obtenidos mediante encuestas a padres de familia, identificando patrones de comportamiento, preferencias digitales y viabilidad del modelo de intervención.

## Contenido del Repositorio
* `/Base de datos`: Archivos con la matriz de datos crudos (25 observaciones).
* `/Códigos`: Scripts de **R** (`Análisis.R`, `Modelo.R`) utilizados para el procesamiento estadístico automatizado.
* `/Resultados`: Documentación de los análisis descriptivos, tablas de resultados y el informe final.
* **Informe de Resultados**: Documento detallado con la interpretación integral de los hallazgos, el ajuste del modelo final y las conclusiones del estudio.

## Software Utilizado
* **R**: Utilizado para el procesamiento, limpieza de datos y cálculo de estadísticos descriptivos.
* **Microsoft Excel**: Utilizado para la gestión de la base de datos y diseño de gráficos.
* **GitHub**: Plataforma para la documentación y control de versiones del proyecto.

## Criterio de Reproducibilidad
La reproducibilidad técnica está garantizada mediante la automatización en el directorio `/Resultados`:
* **Procesamiento:** Se integraron funciones de **R** (para análisis estadísticos) y funciones de Excel (`CONTAR.SI`, `PROMEDIO`, `MEDIANA`, `MODA.UNO`, `DESVEST.M`).
* **Automatización:** Cualquier actualización en la matriz de datos genera una actualización automática en los cálculos de frecuencias y medidas de tendencia central.

## Informe de Ajuste del Modelo Descriptivo Final
El modelo de perfilamiento parental se sustenta en los siguientes hallazgos estadísticos:

| Variable | Ajuste del Modelo / Hallazgo |
| :--- | :--- |
| **Género del Tutor** | Predominio femenino (60.0%; Moda = Femenino). |
| **Sexo del Adolescente** | Distribución equilibrada (52.0% hijas / 48.0% hijos). |
| **Frecuencia de Conversación** | Alta disposición (Media = 3.60; Moda = "Siempre"). |
| **Nivel de Interés** | Alta viabilidad (76.0% "Muy interesado"; Desv. Est. = 0.60). |
| **Canal Digital** | Arquitectura bimodal: Instagram (40.0%) y WhatsApp (40.0%). |
| **Frecuencia de Envío** | Tasa óptima: Una vez por semana (Moda = 48.0%). |
| **Sostenibilidad Económica** | Rango comercial óptimo: S/ 20 a S/ 50 (Moda = 60.0%). |

## Integrantes
* Quijada Narváez Sofía
* Vicente Bautista Micaela
* Cerda Paucar Celeste
* Buiza Rosas Alonso
* Carnero Santos Luis
