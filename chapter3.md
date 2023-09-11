---
title_meta: Capítulo 3
title: Matrices
description: >-
  En este capítulo, aprenderás cómo trabajar con matrices en R. Al final del capítulo, podrás crear matrices y entender cómo hacer cálculos básicos con ellas. Analizarás los números de taquilla de las películas de Star Wars y aprenderás a usar matrices en R. ¡Que la fuerza te acompañe!
---

## ¿Qué es una matriz?

```yaml
type: NormalExercise
key: d61aeba84c
xp: 100
skills:
- 1
```

En R, una matriz es una colección de elementos del mismo tipo de datos (numéricos, de caracteres o lógicos) organizados en un número fijo de filas y columnas. Como solo trabaja con filas y columnas, una matriz se denomina bidimensional. 

Puedes construir una matriz en R con la función [`matrix()`](http://www.rdocumentation.org/packages/base/functions/matrix). Considera el siguiente example:

```
matrix(1:9, byrow = TRUE, nrow = 3)
```

En [`matrix()`](http://www.rdocumentation.org/packages/base/functions/matrix) function:

- El primer argumento es la colección de elementos que R organizará en las filas y columnas de la matriz. Aquí usamos `1:9` como atajo para `c(1, 2, 3, 4, 5, 6, 7, 8, 9)`.
- El argumento `byrow` indica que las filas rellenan la matriz. Si queremos que la matriz se llene con las columnas, simplemente colocamos `byrow = FALSE`. 
- El tercer argumento `nrow` indica que la matriz debe tener tres filas.

`@instructions`
Construye una matriz con 3 filas que contenga los números del 1 al 9, rellenadas por filas.

`@hint`
Lee la tarea detenidamente, ¡la respuesta ya está dada!

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Construye una matriz con 3 filas que contengan los números del 1 al 9
\`\`\`

`@solution`
\`\`\`{r}
# Construye una matriz con 3 filas que contengan los números del 1 al 9
matrix(1:9, byrow = TRUE, nrow = 3)
\`\`\`

`@sct`
\`\`\`{r}
ex() %>% check\_function("matrix") %>% {
	check\_arg (., 'data') %>% check\_equal (incorrect\_msg = "¿Has creado correctamente la matriz? Eche un vistazo a la tarea, ¡la respuesta ya está dada!")
	check\_arg (., 'byrow') %>% check\_equal (incorrect\_msg = "¿Has creado correctamente la matriz? Eche un vistazo a la tarea, ¡la respuesta ya está dada!")
	check\_arg (., 'nrow') %>% check\_equal (incorrect\_msg = "¿Has creado correctamente la matriz? Eche un vistazo a la tarea, ¡la respuesta ya está dada!")
	}

ex () %>% check\_output\_expr ("matrix (1:9, byrow=TRUE, nrow=3)", missing\_msg = "Parece que hay un problema con la definición de la matriz. Eche un vistazo a la tarea, ¡la respuesta ya está dada!")

success\_msg("¡Buen trabajo! Continúe con el siguiente ejercicio.")
\`\`\`

---

## Analiza las matrices, deberás

```yaml
type: NormalExercise
key: effc2fb945
xp: 100
skills:
- 1
```

Ha llegado el momento de ensuciarse las manos. En los siguientes ejercicios analizarás los números de taquilla de la franquicia de Star Wars. ¡Que la fuerza te acompañe! 

En el editor se definen tres vectores. Cada uno representa los números de taquilla de las tres primeras películas de Star Wars. El primer elemento de cada vector indica los ingresos de la taquilla estadounidense, el segundo elemento se refiere a la taquilla no estadounidense (source: Wikipedia).

En este ejercicio, combinarás todas estas figuras en un solo vector. A continuación, construirás una matriz a partir de este vector.

`@instructions`
- Usa `c(new_hope, empire_strikes, return_jedi)` para combinar los tres vectores en un solo vector. Llama a este vector `box_office`.
- Construye una matriz con 3 filas, donde cada fila represente una película. Usa la función `matrix()` para hacer esto. El primer argumento es el vector `box_office`, que contiene todas las cifras de taquilla. A continuación, tendrás que especificar `nrow = 3` y `byrow = TRUE`. Nombra a la matriz resultante `star_wars_matrix`.

`@hint`
- `box_office <- c(new_hope, empire_strikes, return_jedi)` combinará todos los números de los diferentes vectores en un solo vector con 6 elementos.
- `matrix(box_office, nrow = ..., byrow =  ...)` es una plantilla para la solución de la segunda instrucción.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Taquilla Star Wars (¡en millones!)
new\_hope <- c(460.998, 314.4)
empire\_strikes <- c(290.475, 247.900)
return\_jedi <- c(309.306, 165.8)

# Crea box\_office
box\_office <- 

# Construye star\_wars\_matrix
star\_wars\_matrix <-
\`\`\`

`@solution`
\`\`\`{r}
# Taquilla Star Wars (¡en millones!)
new\_hope <- c(460.998, 314.4)
empire\_strikes <- c(290.475, 247.900)
return\_jedi <- c(309.306, 165.8)

# Crea box\_office
box\_office <- c(new\_hope, empire\_strikes, return\_jedi)

# Construye star\_wars\_matrix
star\_wars\_matrix <- matrix(box\_office, nrow = 3, byrow = TRUE)
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No cambies nada de las variables de las taquillas de `new_hope`, `empire_strikes` y `return_jedi`!"

ex() %>% check\_object("new\_hope", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("empire\_strikes", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("return\_jedi", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("box\_office") %>% check\_equal(incorrect\_msg = "¿Has combinado correctamente los valores de `new_hope`, `empire_strikes` y `return_jedi` en el vector `box_office`?")

ex() %>% check\_function("matrix") %>% {
	check\_arg (., 'data') %>% check\_equal (incorrect\_msg = "Asegúrate de especificar correctamente los argumentos que pasas a `matrix()`: `box_office`, `nrow = 3`, `by_row = TRUE`.")
	check\_arg (., 'nrow') %>% check\_equal (incorrect\_msg = "Asegúrate de especificar correctamente los argumentos que pasa a `matrix()`: `box_office`, `nrow = 3`, `by_row = TRUE`.")
	check\_arg (., 'byrow') %>% check\_equal (incorrect\_msg = "Asegúrate de especificar correctamente los argumentos que pasa a `matrix()`: `box_office`, `nrow = 3`, `by_row = TRUE`.")
	}

ex() %>% check\_object("star\_wars\_matrix") %>% check\_equal(incorrect\_msg = "¿Asignaste el resultado de `matrix()` a `star_wars_matrix`?")


success\_msg ("¡La fuerza realmente está contigo! Continúe con el siguiente ejercicio.")
\`\`\`

---

## Nombrar una matriz

```yaml
type: NormalExercise
key: f734e8bf74
xp: 100
skills:
- 1
```

Para ayudarte a recordar lo que está almacenado en `star_wars_matrix`, te gustaría añadir los nombres de las películas a las filas. Esto no solo te ayuda a leer los datos, sino que también es útil para seleccionar ciertos elementos de la matriz. 

Al igual que en los vectores, puedes añadir nombres para las filas y las columnas de una matriz

```
rownames(my\_matrix) <- row\_names\_vector
colnames(my\_matrix) <- col\_names\_vector
```

Ya hemos preparado dos vectores para ti: `region` y `titles`. Necesitarás estos vectores para nombrar las columnas y filas de `star_wars_matrix`, respectivamente.

`@instructions`
- Usa `colnames()` para nombrar las columnas de `star_wars_matrix` con el vector `region`.
- Usa `rownames()` para nombrar las filas de `star_wars_matrix` con el vector `titles`.
- Imprime `star_wars_matrix` para ver el resultado de tu trabajo.

`@hint`
Puedes usar `colnames(star_wars_matrix) <- region` para nombrar las columnas de `star_wars_matrix`. Haz algo similar para nombrar las filas.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Taquilla Star Wars (¡en millones!)
new\_hope <- c(460.998, 314.4)
empire\_strikes <- c(290.475, 247.900)
return\_jedi <- c(309.306, 165.8)

# Construye matriz
star\_wars\_matrix <- matrix(c(new\_hope, empire\_strikes, return\_jedi), nrow = 3, byrow = TRUE)

# Región y títulos de vectores, utilizados para nombrar
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Asigna un nombre a las columnas con la región


# Nombra las filas con títulos


# Imprime star\_wars\_matrix
\`\`\`

`@solution`
\`\`\`{r}
# Taquilla Star Wars (¡en millones!)
new\_hope <- c(460.998, 314.4)
empire\_strikes <- c(290.475, 247.900)
return\_jedi <- c(309.306, 165.8)

# Construye matriz
star\_wars\_matrix <- matrix(c(new\_hope, empire\_strikes, return\_jedi), nrow = 3, byrow = TRUE)

# Región y títulos de vectores, utilizados para nombrar
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Asigna un nombre a las columnas con la región
colnames(star\_wars\_matrix) <- region

# Nombra las filas con títulos
rownames(star\_wars\_matrix) <- titles

# Imprime star\_wars\_matrix
star\_wars\_matrix
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No cambies nada de las variables de las taquillas de `new_hope`, `empire_strikes` y `return_jedi`!"

ex()  %>% check\_object("new\_hope", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex()  %>% check\_object("empire\_strikes", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex()  %>% check\_object("return\_jedi", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

msg <- "No cambies el contenido de `star_wars_matrix`; ¡solo los nombres de las filas y columnas!" 

ex()  %>% check\_object("star\_wars\_matrix") %>% check\_equal(incorrect\_msg = msg)

msg <- "No cambies nada de los vectores de región y títulos que se han definido para ti".

ex()  %>% check\_object("region", undefined\_msg = msg)  %>%  check\_equal(incorrect\_msg = msg)
ex() %>% check\_object("titles", undefined\_msg = msg) %>% check\_equal( incorrect\_msg = msg)

ex() %>% check\_object("star\_wars\_matrix") %>% check\_equal(eq\_condition = "equal",incorrect\_msg = "¿Has configurado correctamente los nombres de fila y columna de `star_wars_matrix`? Usa colnames (star\_wars\_matrix) <- region para los nombres de las columnas; haz lo mismo para nombrar las filas.")

ex() %>% check\_output\_expr("star\_wars\_matrix", missing\_msg = "No olvides imprimir `star_wars_matrix` después de nombrar las filas y las columnas.")

success\_msg("¡Buen trabajo! ¡Estás en camino de convertirte en un Jedi de R! Continúe con el siguiente ejercicio.")
\`\`\`

---

## Calcular la taquilla mundial

```yaml
type: NormalExercise
key: 3fd7499a12
xp: 100
skills:
- 1
```

Lo más importante para que una película se convierta en una leyenda instantánea en Tinseltown son sus cifras de taquilla en todo el mundo. 

Para calcular los ingresos totales de taquilla de las tres películas de Star Wars, debes sumar la columna de ingresos estadounidenses y la columna de ingresos no estadounidenses. 

En R, la función [`rowSums()`](http://www.rdocumentation.org/packages/base/functions/colSums) calcula convenientemente los totales de cada fila de una matriz. Esta función crea un nuevo vector:

```
rowSums(my\_matrix)
```

`@instructions`
Calcula las cifras de taquilla mundial de las tres películas y ponlas en el vector llamado `worldwide_vector`.

`@hint`
`rowSums(star_wars_matrix)` calculará la suma de cada fila, es decir, la taquilla total de cada película.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Construye star\_wars\_matrix
box\_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope",
                 "The Empire Strikes Back",
                 "Return of the Jedi")
               
star\_wars\_matrix <- matrix(box\_office,
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# Calcule las cifras de taquilla mundial
worldwide\_vector <-
\`\`\`

`@solution`
\`\`\`{r}
# Construye star\_wars\_matrix
box\_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi")
               
star\_wars\_matrix <- matrix(box\_office,
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# Calcule las cifras de taquilla mundial
worldwide\_vector <- rowSums(star\_wars\_matrix)
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No cambies nada de las variables preestablecidas `box_office_all` y `star_wars_marix`!"

ex() %>% check\_object("box\_office", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("star\_wars\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("worldwide\_vector") %>% check\_equal(incorrect\_msg = "Llama a `rowSums()` en `star_wars_matrix` y guarda el resultado en `worldwide_vector`.")

success\_msg("¡Bien hecho! Continúe con el siguiente ejercicio.")
\`\`\`

---

## Añadir una columna para la taquilla mundial

```yaml
type: NormalExercise
key: 86b87a8545
xp: 100
skills:
- 1
```

En el ejercicio anterior calculaste el vector que contenía los ingresos de taquilla en todo el mundo de cada una de las tres películas de Star Wars. Sin embargo, este vector aún no forma parte de `star_wars_matrix`.

Puedes añadir una columna o varias columnas a una matriz con la función [`cbind()`](http://www.rdocumentation.org/packages/base/functions/cbind), que fusiona matrices y/o vectores por columna. Por example: 

```
big\_matrix <- cbind (matrix1, matrix2, vector1...)
```

`@instructions`
Añade `worldwide_vector` como una nueva columna de `star_wars_matrix` y asigna el resultado a `all_wars_matrix`. Usa la función [`cbind()`](http://www.rdocumentation.org/packages/base/functions/cbind)

`@hint`
En este ejercicio, debes pasar dos variables a `cbind()`: `star_wars_matrix` and `worldwide_vector`, en este orden. Asigna el resultado a `all_wars_matrix`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Construye star\_wars\_matrix
box\_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi")
               
star\_wars\_matrix <- matrix(box\_office,
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# Las cifras de la taquilla mundial
worldwide\_vector <- rowSums(star\_wars\_matrix)

# Enlaza la nueva variable worldwide\_vector como una columna a star\_wars\_matrix
all\_wars\_matrix <-
\`\`\`

`@solution`
\`\`\`{r}
# Construye star\_wars\_matrix
box\_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi")
               
star\_wars\_matrix <- matrix(box\_office,
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# Las cifras de la taquilla mundial
worldwide\_vector <- rowSums(star\_wars\_matrix)

# Enlaza la nueva variable worldwide\_vector como una columna a star\_wars\_matrix
all\_wars\_matrix <- cbind(star\_wars\_matrix, worldwide\_vector)
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No cambies nada de las variables preestablecidas `box_office_all` y `star_wars_marix`!"
ex() %>% check\_object("box\_office", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("star\_wars\_matrix", undefined\_msg = msg) %>% check\_equal(, incorrect\_msg = msg)

ex() %>% check\_object("worldwide\_vector") %>% check\_equal(incorrect\_msg = "Guarda el resultado de `rowSums(star_wars_matrix)` en `worldwide_vector`.")


msg <- "¿Has usado `cbind()` correctamente para añadir `worldwide_vector` a `star_wars_matrix`? Deberías pasar `star_wars_matrix` y `world_wide_vector` a `cbind()`, en este orden. La matriz resultante, `all_wars_matrix`, debe constar de tres filas y tres columnas".
ex() %>% check\_object("all\_wars\_matrix") %>% check\_equal(incorrect\_msg = msg)


success\_msg("¡Buen trabajo! Después de añadir una columna a una matriz, el siguiente paso lógico es añadir filas. Descubre cómo hacerlo en el siguiente ejercicio.");
\`\`\`

---

## Añadir una fila

```yaml
type: NormalExercise
key: bcadb29139
xp: 100
skills:
- 1
```

Al igual que cada acción tiene una reacción, cada c[`cbind()`](http://www.rdocumentation.org/packages/base/functions/cbind) tiene un [`rbind()`](http://www.rdocumentation.org/packages/base/functions/cbind). (Admitimos que se nos dan muy mal las metáforas). 

Tu R workspace, donde  «viven» todas las variables que definiste (comprueba qué es un workspace), ya se ha inicializado y contiene dos matrices:

- `star_wars_matrix` que hemos usado todo el tiempo, con datos de la trilogía original,
- `star_wars_matrix2`, con datos similares para la trilogía de precuelas. 

Explora estas matrices en la consola si quieres verlas más de cerca. Si quieres consultar el contenido del workspace, puedes escribir `ls()` en la consola.

`@instructions`
Usa `rbind()` para unir `star_wars_matrix` y `star_wars_matrix2`, en este orden. Asigna la matriz resultante a `all_wars_matrix`.

`@hint`
Une las dos matrices this:
```
rbind (matrix1, matrix2)
```
Asigna el resultado a `all_wars_matrix`.

`@pre_exercise_code`
\`\`\`{r}
# Construye matriz
box\_office\_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie\_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col\_titles <- c("US","non-US")
star\_wars\_matrix <- matrix(box\_office\_all, nrow = 3, byrow = TRUE, dimnames = list(movie\_names, col\_titles))

# Construir matrix2
box\_office\_all2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
movie\_names2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
star\_wars\_matrix2 <- matrix(box\_office\_all2, nrow=3, byrow = TRUE, dimnames = list(movie\_names2, col\_titles))

# eliminar todo excepto all\_wars\_matrix
rm(box\_office\_all)
rm(movie\_names)
rm(col\_titles)
rm(box\_office\_all2)
rm(movie\_names2)
\`\`\`

`@sample_code`
\`\`\`{r}
# star\_wars\_matrix y star\_wars\_matrix2 están disponibles en tu workspace
star\_wars\_matrix  
 star\_wars\_matrix2 

# Combina ambas trilogías de Star Wars en una matriz
all\_wars\_matrix <-
\`\`\`

`@solution`
\`\`\`{r}
# star\_wars\_matrix y star\_wars\_matrix2 están disponibles en tu workspace
star\_wars\_matrix  
 star\_wars\_matrix2 

# Combina ambas trilogías de Star Wars en una matriz
all\_wars\_matrix <- rbind (star\_wars\_matrix, star\_wars\_matrix2)
\`\`\`

`@sct`
\`\`\`{r}
msg = "No anules las variables que se han definido para usted en el espacio de trabajo (`star_wars_matrix` y `star_wars_matrix2`)."
ex() %>% check\_object("star\_wars\_matrix",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("star\_wars\_matrix2", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("all\_wars\_matrix") %>% check\_equal(incorrect\_msg = "Usaste `rbind()` correctamente para crear `all_wars_matrix()`? `rbind()` debería tomar arguments: `star_wars_matrix` y `star_wars_matrix2`, en ese orden.")


success\_msg("¡Maravilloso! Continúa con el siguiente ejercicio y descubre cómo puedes combinar los resultados de la función `rbind()` con la función `colSums()`.")
\`\`\`

---

## Los ingresos totales de taquilla de toda la saga

```yaml
type: NormalExercise
key: 1bfe5ae096
xp: 100
skills:
- 1
```

Al igual que [`cbind()`](http://www.rdocumentation.org/packages/base/functions/cbind) tiene  [`rbind()`](http://www.rdocumentation.org/packages/base/functions/cbind), [`colSums()`](http://www.rdocumentation.org/packages/base/functions/colSums) tiene [`rowSums()`](http://www.rdocumentation.org/packages/base/functions/colSums) Tu R workspace ya contiene la matriz `all_wars_matrix`que creaste en el ejercicio anterior; escribe `all_wars_matrix` para verla de otra manera. Calculemos ahora los ingresos totales de taquilla de toda la saga.

`@instructions`
- Calcula los ingresos totales para EE. UU. y la región no estadounidense y asigna `total_revenue_vector`. Puedes usar la función [`colSums()`](http://www.rdocumentation.org/packages/base/functions/colSums).
- Imprima `total_revenue_vector` para ver los resultados.

`@hint`
Deberías usar la función [`colSums()`](http://www.rdocumentation.org/packages/base/functions/colSums) con `star_wars_matrix`  como argumento para encontrar la taquilla total por región.

`@pre_exercise_code`
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/intro\_to\_r/all\_wars\_matrix.RData"))
```

`@sample_code`
\`\`\`{r}
# all\_wars\_matrix está disponible en tu workspace
all\_wars\_matrix

# Ingresos totales para EE. UU. y fuera de EE. UU.
total\_revenue\_vector <- 
  
# Imprime total\_revenue\_vector
\`\`\`

`@solution`
\`\`\`{r}
# all\_wars\_matrix está disponible en tu workspace
all\_wars\_matrix

# Ingresos totales para EE. UU. y fuera de EE. UU.
total\_revenue\_vector <- colSums (all\_wars\_matrix)

# Imprime total\_revenue\_vector
total\_revenue\_vector
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies el contenido de `all_wars_matrix`; se creó para ti en el espacio de trabajo".
ex() %>% check\_object("all\_wars\_matrix", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex() %>% check\_function("colSums") %>% check\_arg('x') %>% check\_equal(incorrect\_msg = "¿Usaste la función `colSums()` en la matriz all\_wars\_matrix?")

ex() %>% check\_object("total\_revenue\_vector") %>% check\_equal(incorrect\_msg = "¿Has asignado correctamente el resultado de `colSums(all_wars_matrix)` a `total_revenue_vector`?")

ex() %>% check\_output\_expr("total\_revenue\_vector", missing\_msg = "¡No olvides imprimir `total_revenue_vector`!")

success\_msg("¡Bellissimo! Dirígete al siguiente ejercicio para aprender a crear subconjuntos matriciales").
\`\`\`

---

## Selección de elementos de la matriz

```yaml
type: NormalExercise
key: 41d9d69713
xp: 100
skills:
- 1
```

Al igual que con los vectores, puedes utilizar los corchetes `[ ]` para seleccionar uno o varios elementos de una matriz. Mientras que los vectores tienen una dimensión, las matrices tienen dos dimensiones. Por lo tanto, debes usar una coma para separar las filas que quieres seleccionar de las columnas. Por example: 

- `my_matrix[1,2]` selecciona el elemento de la primera fila y la segunda columna.
- `my_matrix[1:3,2:4]` da como resultado una matriz con los datos de las filas 1, 2, 3 y las columnas 2, 3 y 4.

Si quieres seleccionar todos los elementos de una fila o columna, no se necesita ningún número antes o después de la coma, respectively:

- `my_matrix[,1]` selecciona todos los elementos de la primera columna.
- `my_matrix[,1]` selecciona todos los elementos de la primera fila.

¡Vuelta a Star Wars con este conocimiento recién adquirido! Al igual que en el ejercicio anterior, `all_wars_matrix` ya está disponible en tu espacio de trabajo.

`@instructions`
- Selecciona los ingresos no estadounidenses para todas las películas (la segunda columna completa de `all_wars_matrix`) y almacena el resultado como `non_us_all`.
- Usa `mean()` en `non_us_all` para calcular los ingresos medios fuera de Estados Unidos de todas las películas. Simplemente imprime el resultado.
- Esta vez, selecciona los ingresos no estadounidenses de las dos primeras películas de `all_wars_matrix`. Guarda el resultado como `non_us_some`.
- Usa `mean()` nuevamente para imprimir el promedio de los valores de `non_us_some`.

`@hint`
Puedes seleccionar toda la segunda columna de una matriz `my_matrix` usando `my_matrix[,2]`.

`@pre_exercise_code`
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/intro\_to\_r/all\_wars\_matrix.RData"))
```

`@sample_code`
\`\`\`{r}
# all\_wars\_matrix está disponible en tu workspace
all\_wars\_matrix

# Selecciona los ingresos fuera de Estados Unidos para todas las películas
non\_us\_all <- 
  
# Ingresos medios fuera de EE. UU.

  
# Selecciona los ingresos fuera de EE. UU. de las dos primeras películas
non\_us\_some <- 
  
# Ingresos medios fuera de EE. UU. de las dos primeras películas

\`\`\`

`@solution`
\`\`\`{r}
# all\_wars\_matrix está disponible en tu workspace
all\_wars\_matrix

# Selecciona los ingresos fuera de Estados Unidos para todas las películas
non\_us\_all <- all\_wars\_matrix \[,2]
  
# Ingresos medios fuera de EE. UU.
mean(non\_us\_all)
  
# Selecciona los ingresos fuera de EE. UU. de las dos primeras películas
non\_us\_some <- all\_wars\_matrix\[1:2,2]
  
# Ingresos medios fuera de EE. UU. de las dos primeras películas
mean(non\_us\_some)
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies el contenido de `all_wars_matrix`; esta matriz ya se ha creado para ti en el workspace."

ex() %>% check\_object("all\_wars\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("non\_us\_all") %>% check\_equal(incorrect\_msg = "¿Asignaste a `non_us_all` toda la segunda columna de `all_wars_matrix`? ¡Puedes usar `[, 2]` para hacer esto!")

ex() %>% check\_output\_expr("mean(non\_us\_all)", missing\_msg = "¿Has calculado el promedio de los valores de `non_us_all` llamando a `mean(non_us_all)`? Simplemente imprime el resultado").

ex() %>% check\_object("non\_us\_some") %>% check\_equal(incorrect\_msg = "¿Asignaste a `non_us_some` los ingresos no estadounidenses de las dos primeras películas? ¡Puedes usar `[1:2,2]` para hacer esto!")

ex() %>% check\_output\_expr("mean(non\_us\_some)", missing\_msg = "¿Has calculado el promedio de los valores de ` llamando a `mean(non\_us\_some)`? Simplemente imprime el resultado").

success\_msg("¡Bien! Continúa con el siguiente ejercicio.")
\`\`\`

---

## Un poco de aritmética con matrices

```yaml
type: NormalExercise
key: c81c656f06
xp: 100
skills:
- 1
```

De manera similar a lo que ha aprendido con los vectores, los operadores estándar como `+`, `-`, `/`, `*`, etc. funcionan de forma elemental en las matrices de R. 

Por ejemplo, `2 * my_matrix` multiplica cada elemento de my\_matrix` por dos.

Como analista de datos recién contratado para Lucasfilm, tu trabajo es averiguar cuántos visitantes acudieron a cada película en cada área geográfica. Ya tienes las cifras de ingresos totales en `all_wars_matrix`.. Supongamos que el precio de una entrada era de 5 dólares. Simplemente dividiendo los números de taquilla por el precio de esta entrada, obtendrá el número de visitantes.

`@instructions`
- Divide `all_wars_matrix` entre 5 y obtendrás el número de visitantes en millones. Asigna la matriz resultante a los `visitors`.
- Imprime las `visitors` para que puedas echarles un vistazo.

`@hint`
El número de visitantes es igual a `all_wars_matrix` dividido por 5.

`@pre_exercise_code`
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/intro\_to\_r/all\_wars\_matrix.RData"))
```

`@sample_code`
\`\`\`{r}
# all\_wars\_matrix está disponible en tu workspace
all\_wars\_matrix

# Estima los visitantes
visitors <- 
  
# Imprime el presupuesto en la consola

\`\`\`

`@solution`
\`\`\`{r}
# all\_wars\_matrix está disponible en tu workspace
all\_wars\_matrix

# Estima los visitantes
visitors <- all\_wars\_matrix / 5

# Imprime el presupuesto en la consola
visitors
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies el contenido de `all_wars_matrix`; esta matriz ya se ha creado para ti en el workspace."

ex() %>% check\_object("all\_wars\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("visitors") %>% check\_equal(incorrect\_msg = "Parece que `visitors` no es correcto. Simplemente divide `all_wars_matrix` entre 5 y guarda la matriz resultante como `visitors`.")

ex() %>% check\_output\_expr("visitors", missing\_msg = "No olvides imprimir `visitors` para que puedas echarle un vistazo").


success\_msg("¡Buen trabajo! ¿Qué te dicen estos resultados? ¡La asombrosa cifra de 92 millones de personas fueron a ver A New Hope en los cines estadounidenses! Continúa con el siguiente ejercicio.")
\`\`\`

---

## Un poco de aritmética con matrices (2)

```yaml
type: NormalExercise
key: 1e0b39d6e9
xp: 100
skills:
- 1
```

Al igual que `2 * my_matrix` multiplica cada elemento de `my_matrix` por dos, `my_matrix1 * my_matrix2` crea una matriz en la que cada elemento es el producto de los elementos correspondientes en `my_matrix1` y `my_matrix2`. 

Tras analizar el resultado del ejercicio anterior, el gran jefe Lucas señala que los precios de las entradas subieron con el tiempo. Pide rehacer el análisis en función de los precios que puedes encontrar en `ticket_prices_matrix` (fuente: imaginación).

_Quienes estén familiarizados con las matrices deben tener en cuenta que esta no es la multiplicación de matrices estándar para la que se debe usar `%*%` en R._

`@instructions`
- Divide `all_wars_matrix` por `ticket_prices_matrix` para obtener el número estimado de visitantes dentro y fuera de EE. UU. para las seis películas. Asigne el resultado a `visitors`.
- En la matriz `visitors`, selecciona toda la primera columna, que representa el número de visitantes en EE. UU. Guarda esta selección como us\_visitors.
- Calcula el número promedio de visitantes de EE. UU.; imprime el resultado.

`@hint`
- Puedes usar la función `mean()` para calcular el promedio de las entradas de la función.
- Para obtener el número de visitantes en EE. UU., selecciona la primera columna de `visitors` usando `visitors[ ,1]`.

`@pre_exercise_code`
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/intro\_to\_r/all\_wars\_matrix.RData"))
movie\_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
col\_titles <- c("US","non-US")
ticket\_prices\_matrix <- matrix(c(5, 5, 6, 6, 7, 7, 4, 4, 4.5, 4.5, 4.9, 4.9), nrow = 6, byrow = TRUE, dimnames = list(movie\_names,col\_titles))
```

`@sample_code`
\`\`\`{r}
# all\_wars\_matrix y ticket\_prices\_matrix están disponibles en tu workspace
all\_wars\_matrix
ticket\_prices\_matrix

# Número estimado de visitantes
visitors <- 

# Visitantes en EE. UU.
us\_visitors <- 

# Número promedio de visitantes en EE. UU.

\`\`\`

`@solution`
\`\`\`{r}
# all\_wars\_matrix y ticket\_prices\_matrix están disponibles en tu workspace
all\_wars\_matrix
ticket\_prices\_matrix

# Número estimado de visitantes
visitantes <- all\_wars\_matrix/ ticket\_prices\_matrix

# Visitantes en EE. UU.
us\_visitors <- visitantes \[,1]

# Número promedio de visitantes en EE. UU.
mean(us\_visitors)
\`\`\`

`@sct`
\`\`\`{r}
msg <- "No cambies el contenido de `all_wars_matrix`; esta matriz ya se ha creado para ti en el espacio de trabajo."
ex() %>% check\_object("all\_wars\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("ticket\_prices\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("visitors") %>% check\_equal(incorrect\_msg = "¿Has creado correctamente la matriz `visitors`? Debes dividir `all_wars_matrix` por `ticket_prices_matrix` para llegar hasta allí").

ex() %>% check\_object("us\_visitors") %>% check\_equal(incorrect\_msg = "Para crear `us_visitors`, debes seleccionar correctamente toda la primera columna de `visitors`. ¡Puedes usar `[,1]` para esto!")

ex() %>% check\_output\_expr("mean(us\_visitors)", missing\_msg = "Una vez que hayas creado `us_visitors`, puedes usar `mean()` para calcular el número promedio de visitantes en EE. UU. Asegúrate de imprimir el resultado").


success\_msg("Es un hecho: ¡la fuerza de R está contigo! Este ejercicio concluye el capítulo sobre matrices. Próxima parada en tu viaje por el lenguaje R: los factores").
\`\`\`
