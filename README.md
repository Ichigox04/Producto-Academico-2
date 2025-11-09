# Proyecto: Ejercicios en Ensamblador para EMU8086

## Descripción general
Este repositorio contiene 4 ejercicios desarrollados en lenguaje ensamblador **8086**, compatibles con **EMU8086** y MASM/TASM.  
El objetivo es practicar estructuras de control, operaciones aritméticas y manejo de memoria. Los ejercicios incluyen bucles WHILE, condicionales IF/ELSE, intercambio de variables y optimización de código evitando errores comunes de memoria a memoria.

---

## Ejercicios

### **Ejercicio 1: Cálculo del MCD (Máximo Común Divisor)**
- **Objetivo:** Determinar el MCD de dos números enteros.
- **Descripción:** Se utiliza un bucle WHILE que resta el menor valor del mayor hasta que ambos números sean iguales. El valor común final es el MCD.
- **Conceptos clave:** WHILE, comparación de registros (`CMP`), operaciones de resta.

### **Ejercicio 2: WHILE con incremento y decremento**
- **Objetivo:** Modificar dos variables según condiciones en un bucle.
- **Descripción:** Mientras `a > 10`, se decrementa `a` y se incrementa `b` en 2. Este ejercicio muestra el control de flujo con WHILE y operaciones aritméticas básicas.
- **Conceptos clave:** WHILE, `DEC`, `ADD`, comparación con saltos condicionales.

### **Ejercicio 3: Intercambio de valores (swap) con IF/ELSE**
- **Objetivo:** Intercambiar valores de dos variables si se cumple una condición.
- **Descripción:** Si `a < b`, se realiza un swap usando una variable temporal y registros. Si `a >= b`, se asigna a `b` el valor de `a - 1`.  
- **Conceptos clave:** IF/ELSE, comparación `CMP`, saltos condicionales (`JL`, `JGE`), swap con registro temporal.

### **Ejercicio 4: Optimización de operaciones memoria ↔ memoria**
- **Objetivo:** Corregir y optimizar el código para evitar errores de memoria a memoria.
- **Descripción:** Se asegura que todas las comparaciones y movimientos entre variables de memoria utilicen registros (`AX`) como intermediarios, garantizando compatibilidad con EMU8086 y MASM/TASM.
- **Conceptos clave:** Buenas prácticas en ASM, operaciones registro ↔ memoria, mantenimiento de flujo de control.

---

## Cómo ejecutar
1. Abrir **EMU8086**.
2. Cargar el archivo `.asm` correspondiente a cada ejercicio.
3. Ensamblar y ejecutar.
4. Verificar los resultados según la lógica de cada programa.

---

## Autor
Leonardo Enrique Bances Huallpa
