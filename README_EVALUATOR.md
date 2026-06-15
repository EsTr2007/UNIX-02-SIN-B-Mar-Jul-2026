# 📊 Evaluador de Rama: blackhatbash

Script bash para calificar la rama `blackhatbash` del repositorio UNIX-02-SIN-B con una rúbrica completa de 10 aspectos.

## ✨ Características

✅ **10 Métricas de Evaluación:**
1. Calidad de Commits
2. Horario de Commits (7 AM - 5 PM, hora Ecuador)
3. Calidad de Mensajes (en inglés y explicativos)
4. Consistencia y Frecuencia
5. Cobertura de Cambios
6. Tamaño de Commits (Churn)
7. Limpieza (Merge Commits)
8. Actividad Fuera de Horas
9. Integridad del Código
10. Convención de Nombres

✅ **Generación de Reportes:**
- Salida colorizada en terminal
- Reporte JSON con métricas detalladas
- Reporte HTML interactivo
- Tabla de resumen ponderado

✅ **Zona Horaria Automática:**
- Detecta automáticamente commits fuera del horario académico
- Usa zona horaria de Ecuador (UTC-5)

---

## 🚀 Instalación y Uso

### Paso 1: Descargar el script

```bash
# El script ya está disponible en:
# /home/claude/evaluate_blackhatbash.sh
```

### Paso 2: Clonar el repositorio (si no lo tienes localmente)

```bash
git clone https://github.com/Snto666/UNIX-02-SIN-B-Mar-Jul-2026.git
cd UNIX-02-SIN-B-Mar-Jul-2026
```

### Paso 3: Ejecutar el evaluador

```bash
# Forma 1: Con rutas por defecto (debes estar en el directorio del repo)
./evaluate_blackhatbash.sh

# Forma 2: Especificando la ruta del repositorio
./evaluate_blackhatbash.sh ~/UNIX-02-SIN-B-Mar-Jul-2026 blackhatbash

# Forma 3: Desde cualquier lugar
/home/claude/evaluate_blackhatbash.sh /ruta/absoluta/al/repo blackhatbash
```

### Ejemplo Completo:

```bash
cd ~
/home/claude/evaluate_blackhatbash.sh ~/UNIX-02-SIN-B-Mar-Jul-2026 blackhatbash
```

---

## 📊 Interpretación de Resultados

### Puntuación Final (0-100)

| Rango | Calificación | Significado |
|-------|--------------|-------------|
| 90-100 | **A (EXCELENTE)** | Trabajo excepcional, cumple todos los criterios |
| 80-89 | **B (MUY BUENO)** | Trabajo de alta calidad con mínimas mejoras |
| 70-79 | **C (BUENO)** | Trabajo aceptable, algunas áreas de mejora |
| 60-69 | **D (ACEPTABLE)** | Trabajo básico, necesita mejoras significativas |
| <60 | **F (NECESITA MEJORA)** | Trabajo insuficiente, requiere revisión |

### Pesos de Métricas

Cada métrica contribuye a la puntuación final:

```
Calidad de Commits ..................... 15%
Horario de Commits ..................... 15%
Calidad de Mensajes .................... 15%
Consistencia ........................... 10%
Cobertura de Cambios ................... 10%
Tamaño de Commits ...................... 10%
Limpieza (Merge) ....................... 5%
Actividad Fuera de Horas ............... 5%
Integridad del Código .................. 10%
Convención de Nombres .................. 5%
─────────────────────────────────────────
TOTAL ................................ 100%
```

---

## 📈 Detalles de Cada Métrica

### 1. **Calidad de Commits** (15%)
- ✅ Mensaje descriptivo (>10 caracteres, <100)
- ✅ Primer carácter en mayúscula
- ✅ Usa convención (feat:, fix:, docs:, etc.)
- ❌ Penaliza mensajes muy cortos o confusos

**Ideal:** Mensajes claros y descriptivos

### 2. **Horario de Commits** (15%)
- ✅ Commits entre 7 AM y 5 PM (hora Ecuador)
- ❌ Penaliza commits fuera de horario académico
- ⚠️ Indica trabajo de último minuto o procrastinación

**Ideal:** 90%+ de commits en horario de clase

### 3. **Calidad de Mensajes** (15%)
- ✅ Mensajes en inglés
- ✅ Explicativos y descriptivos
- ✅ Incluir body para contexto (óptimo)
- ⚠️ Califica por claridad y completitud

**Ideal:** Mensajes excelentes con body adicional

### 4. **Consistencia** (10%)
- ✅ Commits distribuidos a lo largo del tiempo
- ✅ 1-3 commits por día (ideal)
- ❌ Penaliza todo en un día o muy disperso
- Métrica: commits/día

**Ideal:** Desarrollo regular y constante

### 5. **Cobertura de Cambios** (10%)
- ✅ 2-5 archivos modificados por commit (óptimo)
- ❌ Commits que tocan 10+ archivos
- ✅ Cambios granulares y lógicos

**Ideal:** Commits enfocados en áreas específicas

### 6. **Tamaño de Commits** (10%)
- ✅ 50-200 líneas por commit (óptimo)
- ❌ Commits >500 líneas = cambios monolíticos
- ✅ Evita commits muy pequeños (<20 líneas)

**Ideal:** Commits balanceados en tamaño

### 7. **Limpieza (Merge Commits)** (5%)
- ✅ Historial limpio sin merges innecesarios
- ❌ Cada merge commit = -10 puntos
- Usar `rebase` es preferible a `merge`

**Ideal:** Cero merge commits o muy pocos

### 8. **Actividad Fuera de Horas** (5%)
- ❌ Madrugada (12 AM - 6 AM): -5 puntos por commit
- ❌ Después de horas (6 PM - 11 PM): -5 puntos
- ❌ Fines de semana: -5 puntos por commit
- Indica work-life balance

**Ideal:** Cero commits fuera de horario

### 9. **Integridad del Código** (10%)
- ❌ Detecta patrones problemáticos: "WIP", "tmp", "debug"
- ❌ Commits que rompen el código
- ✅ Código compilable en cada commit

**Ideal:** Todos los commits con código válido

### 10. **Convención de Nombres** (5%)
- ✅ Usa `feat:`, `fix:`, `docs:`, `style:`, `refactor:`, etc.
- ❌ Mensajes sin convención
- Métrica: % de commits convencionales

**Ideal:** 100% de commits con convención

---

## 📁 Archivos Generados

Después de ejecutar el script, encontrarás:

```
./blackhatbash_reports/
├── rubrica_YYYYMMDD_HHMMSS.json  # Datos estructurados
└── rubrica_YYYYMMDD_HHMMSS.html  # Reporte interactivo
```

### Abrir el reporte HTML

```bash
# En Linux con navegador predeterminado
xdg-open ./blackhatbash_reports/rubrica_*.html

# O manualmente, abre el archivo en tu navegador
```

---

## 🔧 Resolución de Problemas

### Error: "No se encontró un repositorio Git"

```bash
# Asegúrate de estar en el directorio correcto
cd ~/UNIX-02-SIN-B-Mar-Jul-2026
```

### Error: "La rama 'blackhatbash' no existe"

```bash
# Verifica las ramas disponibles
git branch -a

# Asegúrate de tener la rama actualizada
git fetch origin
git checkout blackhatbash
```

### Los comandos `date` no funcionan correctamente

El script usa `date` de GNU. Si tienes macOS:

```bash
# Instalar coreutils
brew install coreutils

# O usar la ruta explícita
/usr/local/bin/gdate (en lugar de date)
```

---

## 📝 Ejemplo de Salida

```
========================================
EVALUADOR DE RAMA: blackhatbash
========================================

[✓] Repositorio Git validado en: ~/UNIX-02-SIN-B-Mar-Jul-2026
[✓] Rama 'blackhatbash' encontrada

========================================
RECOLECTANDO DATOS
========================================

[✓] Datos recolectados

========================================
CALCULANDO MÉTRICAS
========================================

[✓] Puntuación: 85/100
[✓] Puntuación: 92/100 (In-hours: 18, Out-hours: 2)
[✓] Puntuación: 88/100 (Excelente: 12, Bueno: 6, Pobre: 0)
...

╔════════════════════════════════════════╗
║         PUNTUACIÓN FINAL: 87/100       ║
║         Calificación: MUY BUENO (B)    ║
╚════════════════════════════════════════╝

=== RESUMEN DE PUNTUACIONES ===

MÉTRICA                                  | SCORE | PESO %
────────────────────────────────────────── | ───── | ──────
1. Calidad de Commits                    |    85 |    15
2. Horario de Commits (7 AM - 5 PM)      |    92 |    15
3. Calidad de Mensajes                   |    88 |    15
...

[✓] Reporte JSON: ./blackhatbash_reports/rubrica_20260615_133045.json
[✓] Reporte HTML: ./blackhatbash_reports/rubrica_20260615_133045.html
```

---

## 🎯 Consejos para Mejorar tu Puntuación

### Si Calidad de Commits es baja:
- Escribe mensajes más descriptivos
- Usa palabras clave: "add", "fix", "improve", "refactor"
- Sigue la convención: `feat: descripción`

### Si Horario es bajo:
- Trabajo dentro de 7 AM - 5 PM (hora Ecuador)
- Evita commits tardíos o madrugadas
- Planifica mejor el tiempo

### Si Consistencia es baja:
- Distribuye commits a lo largo de varios días
- Evita hacer todo en la última noche
- 1-2 commits/día es ideal

### Si Convención es baja:
- Estudia Conventional Commits: https://www.conventionalcommits.org/
- Ejemplos:
  - `feat: add authentication module`
  - `fix: resolve memory leak in parser`
  - `docs: update installation guide`
  - `refactor: optimize database queries`

---

## 📚 Referencias

- [Conventional Commits](https://www.conventionalcommits.org/)
- [Git Documentation](https://git-scm.com/doc)
- [Pro Git Book](https://git-scm.com/book/en/v2)

---

## 📞 Soporte

Si tienes problemas:

1. Verifica que tienes la rama clonada localmente
2. Asegúrate de tener `git` instalado: `which git`
3. Verifica permisos: `chmod +x evaluate_blackhatbash.sh`
4. Revisa los logs de error en la salida del script

---

**Versión:** 1.0  
**Última actualización:** 2026-06-15  
**Autor:** Santiago (Snto666)
