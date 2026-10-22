-- 1. Llista el nom de tots els productes que hi ha en la taula producto.
SELECT
	p.nombre
FROM producto as p;

-- 2. Llista els noms i els preus de tots els productes de la taula producto.
SELECT
	p.nombre,
    p.precio
FROM producto as p;

-- 3. Llista totes les columnes de la taula producto.
SELECT
	*
FROM producto as p;

-- 4. Llista el nom dels productes, el preu en euros (precio_eur) i el preu en dòlars estatunidencs (precio_usd) amb un tipus de canvi de 1 € = 1 $.
SELECT
	p.nombre,
    p.precio as precio_eur,
    p.precio as precio_usd
FROM producto as p;

-- 5. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (amb un tipus de canvi de 1 € = 1,1 $ i arrodonint el resultat a dues xifres decimals). Utilitza els següents àlies per a les columnes: nom del producte, euros, dòlars.
SELECT
	p.nombre as 'nom del producte',
    p.precio as 'euros',
    ROUND(p.precio * 1.1, 2) as 'dòlars'
FROM producto as p;

-- 6. Llista els noms (nombre) i els preus de tots els productes de la taula producto, convertint els noms a majúscula.
SELECT
	UPPER(p.nombre) as 'nombre',
    p.precio
FROM producto as p;

-- 7. Llista els noms (nombre) i els preus (precio) dels productes de la taula producto, convertint els noms a minúscula.
SELECT
	LOWER(p.nombre) as 'nombre',
    p.precio
FROM producto as p;

-- 8. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant (iniciales).
SELECT
	f.nombre,
    UPPER(LEFT(f.nombre, 2)) as 'iniciales'
FROM fabricante as f;

-- 9. Llista els noms i els preus dels productes, arrodonint el valor del preu (precio)
SELECT
	p.nombre,
    ROUND(p.precio) as 'precio'
FROM producto as p;

-- 10. Llista els noms i els preus de tots els productes (precio truncado) de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
SELECT
	p.nombre,
    TRUNCATE(p.precio, 0) as 'precio truncado'
FROM producto as p;

-- 11. Mostra una llista amb els codis dels fabricants que apareixen a la taula producto, incloent possibles repeticions.
SELECT
	codigo_fabricante
FROM producto as p
LEFT JOIN fabricante as f
	ON (p.codigo_fabricante = f.codigo);

-- 12. Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.
SELECT
	DISTINCT codigo_fabricante
FROM producto as p
LEFT JOIN fabricante as f
	ON (p.codigo_fabricante = f.codigo);

-- 13. Llista els noms dels fabricants ordenats de manera ascendent
SELECT
	f.nombre
FROM fabricante as f
ORDER BY f.nombre ASC;

-- 14. Llista els noms dels fabricants ordenats de manera descendent
SELECT
	f.nombre
FROM fabricante as f
ORDER BY f.nombre DESC;

-- 15. Llista els noms i els preus dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
SELECT
	p.nombre,
    p.precio
FROM producto as p
ORDER BY p.nombre ASC, p.precio DESC;

-- 16. Retorna una llista amb les 5 primeres files de la taula fabricante.
SELECT
*
FROM fabricante as f
LIMIT 5;

-- 17. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
SELECT
*
FROM fabricante as f
LIMIT 3, 2;

-- 18. Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT).
SELECT
	p.nombre,
    p.precio
FROM producto as p
ORDER BY p.precio ASC
LIMIT 1;

-- 19. Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT).
SELECT
	p.nombre,
    p.precio
FROM producto as p
ORDER BY p.precio DESC
LIMIT 1;

-- 20. Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.
SELECT
	p.nombre
FROM producto as p
JOIN fabricante as f
	ON p.codigo_fabricante = f.codigo
WHERE p.codigo_fabricante = 2;

-- 21. Retorna una llista amb el nom del producte, preu i nom de fabricant (nombre del fabricante) de tots els productes de la base de dades.
SELECT
	p.nombre,
    p.precio,
    f.nombre as 'nombre del fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante);

-- 22. Llista tots els productes amb nom, preu i nom del fabricant (nombre del fabricante) ordenats alfabèticament.
SELECT
	p.nombre,
    p.precio,
    f.nombre 'nombre del fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
ORDER BY f.nombre ASC;

-- 23. Retorna una llista amb el codi del producte, nom del producte, codi del fabricant (codigo fabricante) i nom del fabricant (nombre fabricante), de tots els productes de la base de dades.
SELECT
	p.codigo,
	p.nombre,
	f.codigo as 'codigo fabricante',
    f.nombre as 'nombre fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante);

-- 24. Retorna el nom, el preu i el nom del fabricant (fabricante), del producte més barat.
SELECT
	p.nombre,
    p.precio,
    f.nombre as 'fabricant'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
ORDER BY p.precio ASC
LIMIT 1;

-- 25. Retorna el nom del producte, el preu i el nom del seu fabricant (fabricante), del producte més car.
SELECT
	p.nombre,
    p.precio,
    f.nombre as 'fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
ORDER BY p.precio DESC
LIMIT 1;

-- 26. Retorna una llista amb nom i preu de tots els productes del fabricant Lenovo.
SELECT
	p.nombre,
    p.precio
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
WHERE f.codigo = 2;

-- 27. Retorna una llista amb nom i preu de tots els productes del fabricant Crucial que tinguin un preu major que 200 €
SELECT
	p.nombre,
    p.precio
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
WHERE f.codigo = 6 AND p.precio > 200;

-- 28. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l'operador IN.
SELECT
	p.nombre,
    p.precio,
    f.nombre as 'fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
WHERE f.codigo = 1 OR f.codigo = 3 OR f.codigo = 5;

-- 29. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Fent servir l'operador IN.
SELECT
	p.nombre,
    p.precio,
    f.nombre as 'fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
WHERE f.codigo IN (1,3,5);

-- 30. Retorna un llistat amb el nom, el preu i el nom del fabricant (fabricante) dels productes, on el nom del fabricant acabi en la lletra 'e'.
SELECT
	p.nombre,
    p.precio,
    f.nombre as 'fabricante'
FROM fabricante as f
JOIN producto as p
	ON (f.codigo = p.codigo_fabricante)
WHERE RIGHT(f.nombre, 1) = 'e';

-- 31. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots aquells productes els fabricants dels quals contenen la lletra 'w' en el seu nom.


-- 32. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots els productes amb un preu igual o superior a 180 €. Ordena els resultats, primer pel preu en ordre descendent i després pel nom del producte en ordre ascendent.


-- 33. Retorna un llistat amb el codi i el nom de fabricant (fabricante), solament d'aquells fabricants que tenen productes associats en la base de dades.


-- 34. Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. Inclou també els fabricants que no tenen cap producte. Mostra el nom del fabricant (fabricante) i el nom del producte (producto).


-- 35. Retorna un llistat on només apareguin els noms dels fabricants (fabricante) que no tenen cap producte associat.


-- 36. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).


-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).


-- 38. Llista el nom del producte més car del fabricant Lenovo.


-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.


-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.


-- 41. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.

