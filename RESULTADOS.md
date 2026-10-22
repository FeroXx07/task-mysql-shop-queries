# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 29 correctas de 31 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.26 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.27 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.24 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.26 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.26 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.24 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.24 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.26 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 13: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.25 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.25 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.24 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 17: Correcto

⏱ Tiempo: 0.24 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.26 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.25 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.26 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 22: Correcto

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 23: Correcto

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
-nombre | precio | fabricant
+nombre | precio | fabricante
 Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
```

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 25: Correcto

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 26: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 27: Correcto

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 28: Correcto

⏱ Tiempo: 0.29 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 29: Correcto

⏱ Tiempo: 0.31 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 30: Correcto

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ❌ Query 31: Error
- **Descripción**: 'NoneType' object is not iterable

