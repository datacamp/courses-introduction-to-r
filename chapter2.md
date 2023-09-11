---
title_meta: Capítulo 2
title: Vectores
description: >-
  Te llevaremos de viaje a Las Vegas, donde aprenderás cómo analizar los resultados de tus apuestas utilizando vectores en R. Después de completar este capítulo podrás crear vectores en R, nombrarlos, seleccionar elementos de ellos y comparar diferentes vectores.
---

## Crear un vector

```yaml
type: NormalExercise
key: d9b453dbdd
xp: 100
skills:
\- 1
```

¿Te sientes afortunado? Más te vale, porque este capítulo te lleva de viaje a la Ciudad de los Pecados, ¡también conocida como el Paraíso de los Estadísticos!

Gracias a R y a tus nuevas habilidades de análisis de datos, aprenderás a mejorar tu rendimiento en las mesas y a iniciar tu carrera como jugador profesional. En este capítulo se explica cómo puedes llevar un registro sencillo de tu progreso en las apuestas y cómo puedes realizar algunos análisis de tus acciones pasadas. Próxima parada, Vegas Baby... ¡LAS VEGAS!

`@instructions`
\- ¿Aún recuerdas lo que aprendiste en el primer capítulo? Asigna el valor "Go!" a la variable vegas. Recuerda: ¡R distingue entre mayúsculas y minúsculas!

`@hint`
Simplemente escribe la siguiente línea en el editor:
```
vegas <- "Go!"
```

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Define la variable vegas
vegas <-
\`\`\`

`@solution`
\`\`\`{r}
# Define la variable vegas
vegas <- "Go!"
\`\`\`

`@sct`
\`\`\`{r}
ex () %>% check\_object ("vegas") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar el valor correcto a vegas. ¡No olvides que R distingue entre mayúsculas y minúsculas!")

success\_msg = ("¡Buen trabajo! Vamos al siguiente ejercicio.")
\`\`\`

---

## Crear un vector (2)

```yaml
type: NormalExercise
key: fd427db76f
xp: 100
skills:
\- 1
```

¡Centrémonos primero! 

En tu camino de la pobreza a la riqueza harás un uso extensivo de los vectores. Los vectores son matrices unidimensionales que pueden contener datos numéricos, datos de caracteres o datos lógicos. En otras palabras, un vector es un instrumento sencillo para almacenar datos. Por ejemplo, puedes almacenar tus ganancias y pérdidas diarias en los casinos. 

En R se crea un vector con la función de combinación c (). Coloca los elementos vectoriales separados por una coma entre los paréntesis. Por ejemplo:

```
numeric\_vector <- c (1, 2, 3)
character\_vector <- c ("a", "b", "c")
```

Una vez que hayas creado estos vectores en R, puedes usarlos para hacer cálculos.

`@instructions`
Completa el código de forma que `boolean_vector` contenga los tres elementos: `TRUE`, `FALSE` y `TRUE` (en ese orden).

`@hint`
Asigne `c(TRUE, FALSE, TRUE)` a la variable `boolean_vector` con el operador `<-`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
numeric\_vector <- c (1, 10, 49)
character\_vector <- c ("a", "b", "c")

# Completa el código para boolean\_vector
boolean\_vector <-
\`\`\`

`@solution`
\`\`\`{r}
numeric\_vector <- c (1, 10, 49)
character\_vector <- c ("a", "b", "c")

# Completa el código para boolean\_vector
boolean\_vector <- c(TRUE, FALSE, TRUE)
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No cambies el código que definió `numeric_vector` y `character_vector`!"
ex() %>% check\_object("numeric\_vector", undefined\_msg = msg) %>% check\_equal(, incorrect\_msg = msg)

ex() %>% check\_object("character\_vector", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex () %>% check\_object ("boolean\_vector") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar los valores correctos a `boolean_vector`. Utilice `c(TRUE, FALSE, TRUE)`. ¡No pongas comillas entre `TRUE` y `FALSE`! Además, asegúrate de adoptar el mismo orden que se indica en las instrucciones").


success\_msg ("¡Perfecto! Ten en cuenta que añadir un espacio detrás de las comas en la función `c()` mejora la legibilidad del código. Practiquemos un poco más con la creación de vectores en el próximo ejercicio").
\`\`\`

---

## Crear un vector (3)

```yaml
type: NormalExercise
key: 9f41229dbc
xp: 100
skills:
\- 1
```

Tras una semana en Las Vegas y todavía sin un Ferrari en tu garaje, decides que es hora de empezar a utilizar tus superpoderes de análisis de datos.

Antes de hacer un primer análisis decides recopilar primero todas las ganancias y pérdidas de la última semana: 

Para `poker_vector`: 

- El lunes ganaste 140$
- El martes perdiste 50$
- El miércoles ganaste 20$ 
- El jueves perdiste 120$
- El viernes ganaste 240$

Para `roulette_vector`: 

- El lunes perdiste 24$
- El martes perdiste 50$
- El miércoles ganaste 100$
- El jueves perdiste 350$
- El viernes ganaste 10$

Solo jugabas al póquer y a la ruleta, ya que había una delegación de médiums que ocupaban las mesas de dados. Para poder usar estos datos en R decides crear las variables `poker_vector` y `roulette_vector`.

`@instructions`
Asigna las ganancias/pérdidas de la ruleta a la variable `roulette_vector`. Perdiste 24$, luego perdiste 50$, ganaste 100$, perdiste 350$ y ganaste 10$.

`@hint`
Para ayudarte con este paso, el editor ya contiene el código para crear `poker_vector`. Asigna los valores correctos a `roulette_vector` en función de los números de la tarea. No hay que olvidar que las pérdidas son números negativos.

`@pre_exercise_code`
\`\`\`{r}

\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker de lunes a viernes
poker\_vector <- c(140, -50, 20, -120, 240)

# Ganancias en la ruleta de lunes a viernes
roulette\_vector <-   
 \`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker de lunes a viernes
poker\_vector <- c(140, -50, 20, -120, 240)

# Ganancias en la ruleta de lunes a viernes
roulette\_vector <- c(-24, -50, 100, -350, 10)
\`\`\`

`@sct`
\`\`\`{r}
ex () %>% check\_object ("poker\_vector") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar los valores correctos a `poker_vector`.")

ex () %>% check\_object ("roulette\_vector") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar los valores correctos a `roulette_vector`. ¡Asegúrate de adoptar el orden correcto!")

success\_msg ("¡Muy bien! Para ver el contenido de tus vectores, recuerda que siempre puedes simplemente escribir la variable en la consola y pulsar Enter. ¡Continúa con el siguiente ejercicio!")
\`\`\`

---

## Nombrar un vector

```yaml
type: NormalExercise
key: 3b0b80b192
xp: 100
skills:
\- 1
```

Como analista de datos, es importante tener una visión clara de los datos que utilizas. Por lo tanto, entender a qué se refiere cada elemento es fundamental. 

En el ejercicio anterior, creamos un vector con tus ganancias de la semana. Cada elemento vectorial se refiere a un día de la semana, pero es difícil saber qué elemento pertenece a qué día. Sería bueno si pudieras mostrarlo en el propio vector. 

Puedes dar un nombre a los elementos de un vector con la función `names()`. Echa un vistazo a este ejemplo:

```
some\_vector <- c("John Doe", "poker player")
names(some\_vector) <- c("Name", "Profession")
```

Este código primero crea un vector `some_vector` y luego da un nombre a los dos elementos. Al primer elemento se le asigna el nombre `Name`, mientras que al segundo elemento se le etiqueta como `Profession`. Al imprimir el contenido en la consola se obtiene el siguiente resultado:

```
Name     Profession 
"John Doe" "poker player" 
```

`@instructions`
\- El código del editor nombra los elementos de `poker_vector` con los días de la semana. Agrega código para hacer lo mismo con `roulette_vector`.

`@hint`
Puedes usar `names(roulette_vector)` para establecer los nombres de la variable `roulette_vector`. Asegúrate de usar el mismo vector con los días de la semana como nombres. ¡Recuerda que R distingue entre mayúsculas y minúsculas!

`@pre_exercise_code`
\`\`\`{r}

\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker de lunes a viernes
poker\_vector <- c(140, -50, 20, -120, 240)

# Ganancias en la ruleta de lunes a viernes
roulette\_vector <- c(-24, -50, 100, -350, 10)

# Asigna días como nombres de poker\_vector
names(poker\_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Asignar días (en inglés) como nombres de roulette\_vector

\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker de lunes a viernes
poker\_vector <- c(140, -50, 20, -120, 240)

# Ganancias en la ruleta de lunes a viernes
roulette\_vector <- c(-24, -50, 100, -350, 10)

# Asigna días como nombres de poker\_vector
names(poker\_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Asignar días (en inglés) como nombres de roulette\_vector
names(roulette\_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
\`\`\`

`@sct`
\`\`\`{r}
ex () %>% check\_object ("poker\_vector") %>% check\_equal (incorrect\_msg = "No cambies los valores de `poker_vector`; ya están en el código para ti").

ex () %>% check\_object ("roulette\_vector") %>% check\_equal (incorrect\_msg = "No cambies los valores de `roulette_vector`; ya estaban en el código para ti.")

ex () %>% check\_object ("poker\_vector") %>% check\_equal (eq\_condition = 'equal', incorrect\_msg = "No cambies el código que nombra los elementos de `poker_vector`; ¡céntrate en `roulette_vector`!")

ex () %>% check\_object ("roulette\_vector") %>% check\_equal (eq\_condition = 'equal', incorrect\_msg = "Asegúrese de asignar el vector de nombres correcto a `roulette_vector`. Usa exactamente el mismo vector que se usó para nombrar `poker_vector`.")


Ex().success\_msg("¡Bien hecho! Continúa con el siguiente ejercicio").
\`\`\`

---

## Nombrar un vector (2)

```yaml
type: NormalExercise
key: 6858c65a4a
xp: 100
skills:
\- 1
```

Si quieres convertirte en un buen estadístico, tienes que volverte vago. (Si ya eres vago, es muy probable que seas uno de esos talentos estadísticos excepcionales y natos).

En los ejercicios anteriores probablemente te hayas dado cuenta de que es aburrido y frustrante escribir y volver a escribir información, como los días de la semana. Sin embargo, si lo miras desde una perspectiva superior, hay una forma más eficiente de hacerlo: ¡asignar el vector de los días de la semana a una **variable**! 

Al igual que hiciste con tus devoluciones de póquer y ruleta, también puedes crear una variable que contenga los días de la semana. De esta forma puedes usarlo y reutilizarlo.

`@instructions`
\- Ya se ha creado para ti una variable `days_vector` que contiene los días de la semana.
\- Usa `days_vector` para establecer los nombres de `poker_vector` y `roulette_vector`.

`@hint`
Puedes usar `names(poker_vector) <- days_vector` para establecer los nombres de los elementos `poker_vector`. Haz algo similar con `roulette_vector`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker de lunes a viernes
poker\_vector <- c(140, -50, 20, -120, 240)

# Ganancias en la ruleta de lunes a viernes
roulette\_vector <- c(-24, -50, 100, -350, 10)

# La variable days\_vector
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
 
# Asigna los nombres del día a roulette\_vector y poker\_vector
names(poker\_vector) <-   
 names(roulette\_vector) <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker de lunes a viernes
poker\_vector <- c(140, -50, 20, -120, 240)

# Ganancias en la ruleta de lunes a viernes
roulette\_vector <- c(-24, -50, 100, -350, 10)

# La variable days\_vector
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Asigna los nombres del día a roulette\_vector y poker\_vector
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector
\`\`\`

`@sct`
\`\`\`{r}
msg <- "No cambie las variables predefinidas `poker_vector`, `roulette_vector` o `days_vector`."

ex() %>% check\_object("poker\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("days\_vector", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex () %>% check\_object("poker\_vector") %>% check\_equal(incorrect\_msg = "Asegúrate de asignar `days_vector` a los nombres de `poker_vector`. ", eq\_condition = "igual",)

ex() %>% check\_object("roulette\_vector") %>% check\_equal (eq\_condition = "equal", incorrect\_msg = "Asegúrate de asignar `days_vector` a los nombres de `roulette_vector`").


success\_msg("¡Bien! Un consejo: intenta evitar la duplicación de código en todo momento. ¡Continúa con el siguiente ejercicio y aprende a hacer aritmética con vectores!")
\`\`\`

---

## Calcular las ganancias totales

```yaml
type: NormalExercise
key: da995f099f
xp: 100
skills:
\- 1
```

Ahora que tienes las ganancias del póker y la ruleta como vectores con nombre, puedes empezar a hacer magia analítica de datos. 

Quieres obtener el siguiente tipo de información:

- ¿Cuál ha sido tu ganancia o pérdida total por día de la semana?
- ¿Has perdido dinero en total a lo largo de la semana?
- ¿Estás ganando/perdiendo dinero en el póker o en la ruleta?

Para obtener las respuestas, hay que hacer cálculos aritméticos en vectores. 

Es importante saber que si sumas dos vectores en R, se obtiene la suma de elementos. Por ejemplo, las tres afirmaciones siguientes son equivalentes:

```
c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)
```

También puede hacer los cálculos con variables que representan vectores:

```
a <- c(1, 2, 3) 
b <- c(4, 5, 6)
c <- a + b
```

`@instructions`
\- Toma la suma de las variables `A_vector` y `B_vector` y asígnale el valor a `total_vector`.
\- Inspecciona el resultado imprimiendo `total_vector`.

`@hint`
Usa el operador `+` para sumar `A_vector` y `B_vector`. Utilice `<-` para asignar el resultado a `total_vector`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
A\_vector <- c(1, 2, 3)
B\_vector <- c(4, 5, 6)

# Toma la suma de A\_vector y B\_vector
total\_vector <- 
  
# Imprimir total\_vector

\`\`\`

`@solution`
\`\`\`{r}
A\_vector <- c(1, 2, 3)
B\_vector <- c(4, 5, 6)

# Toma la suma de A\_vector y B\_vector
total\_vector <- A\_vector + B\_vector

# Imprimir total\_vector
total\_vector
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No cambies el contenido de `A_vector` o `B_vector`!"
ex() %>% check\_object("A\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("B\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex () %>% check\_object ("total\_vector") %>% check\_equal (incorrect\_msg = "Asegúrate de que `total_vector` contenga la suma de `A_vector` y `B_vector`").

ex () %>% check\_output\_expr ("total\_vector", missing\_msg = "¡No olvides imprimir `total_vector`! Simplemente escribe `total_vector` en una nueva línea.")

success\_msg("¡Buen trabajo!  Continúa con el siguiente ejercicio").
\`\`\`

---

## Calcular las ganancias totales (2)

```yaml
type: NormalExercise
key: 2969d8ed65
xp: 100
skills:
\- 1
```

Ahora que entiendes cómo R hace aritmética con vectores, ¡es hora de tener esos Ferrari en tu garaje! Primero, debes comprender cuál fue la ganancia o pérdida total por día de la semana. La ganancia diaria total es la suma de las ganancias/pérdidas que obtuviste en el póker por día y las ganancias/pérdidas que obtuviste en la ruleta por día. 

En R, esto es solo la suma de `roulette_vector` y `poker_vector`.

`@instructions`
Asigna a la variable `total_daily` cuánto ganaste o perdiste en cada día en total (combinando póker y ruleta).

`@hint`
Al igual que en el ejercicio anterior, asigne la suma de dos vectores a una nueva variable, `total_daily`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Asigna a total\_daily cuánto ganaste o perdiste cada día
total\_daily <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Asigna a total\_daily cuánto ganaste o perdiste cada día
total\_daily <- poker\_vector + roulette\_vector
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal( incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex () %>% check\_object ("total\_daily") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar la suma de `poker_vector` and `roulette_vector` a `total_daily`.")


success\_msg("¡Buen trabajo! Continúa con el siguiente ejercicio").
\`\`\`

---

## Calcular las ganancias totales (3)

```yaml
type: NormalExercise
key: e66a56b9f0
xp: 100
skills:
\- 1
```

Según el análisis anterior, parece que tuviste una mezcla de días buenos y malos. Esto no es lo que tu ego esperaba, y te preguntas si hay una posibilidad muy pequeña de que hayas perdido dinero durante la semana en total. 

Una función que te ayuda a responder a esta pregunta es [`sum()`](http://www.rdocumentation.org/packages/base/functions/sum). La función calcula la suma de todos los elementos de un vector. Por ejemplo, para calcular la cantidad total de dinero que has perdido o ganado jugando al póker, escribe lo siguiente: 

```
total\_poker <- sum(poker\_vector)
```

`@instructions`
\- Calcula la cantidad total de dinero que ganaste o perdiste en la ruleta y asígnale el valor a la variable `total_roulette`.
\- Ahora que tienes los totales de la ruleta y el póker, puedes calcular fácilmente `total_week` (que es la suma de todas las ganancias y pérdidas de la semana).
\- Imprime `total_week`.

`@hint`
Usa la función [`sum()`](http://www.rdocumentation.org/packages/base/functions/sum) para obtener el total del `roulette_vector`. `total_week` es entonces la suma de `roulette_vector` y `poker_vector`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Ganancias totales con el póker
total\_poker <- sum(poker\_vector)

# Ganancias totales con la ruleta
total\_roulette <-  

# Ganancias totales
total\_week <- 

# Imprime total\_week
  
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Ganancias totales con el póker
total\_poker <- sum(poker\_vector)

# Ganancias totales con la ruleta
total\_roulette <-  sum(roulette\_vector)

# Ganancias totales
total\_week <- total\_roulette + total\_poker

# Imprime total\_week
total\_week
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex()  %>% check\_object("days\_vector", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)
ex() %>% check\_object("poker\_vector",  undefined\_msg = msg, ) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)


ex () %>% check\_object ("total\_poker") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar a `total_poker` la suma de `poker_vector`.")

ex() %>% check\_object("total\_roulette") %>% check\_equal(incorrect\_msg = "Asegúrate de asignar a `total_roulette` la suma de `roulette_vector`").

ex () %>% check\_object ("total\_week") %>% check\_equal (incorrect\_msg = "Asegúrate de asignar a `total_week` la suma de los otros dos vectores totales: `total_roulette` y `total_poker").

ex () %>% check\_output\_expr ("total\_week", missing\_msg = "No olvides escribir `total_week` en una nueva línea para imprimir la variable.")

success\_msg("¡Bien hecho! Esta es una noticia bastante mala...")
\`\`\`

---

## Comparación de las ganancias totales

```yaml
type: NormalExercise
key: f532f5332d
xp: 100
skills:
\- 1
```

Vaya, parece que estás perdiendo dinero. ¡Es hora de repensar y adaptar tu estrategia! Esto requerirá un análisis más profundo... 

Después de una breve lluvia de ideas en el jacuzzi de tu hotel, te das cuenta de que una posible explicación podría ser que tus habilidades no están tan desarrolladas en la ruleta como  en el póquer. Así que tal vez tus ganancias totales en el póquer sean más altas (o `>`) que en la ruleta.

`@instructions`
\- Calcula `total_poker` y `total_roulette` como en el ejercicio anterior. Usa la función `sum()` dos veces.
\- Comprueba si tus ganancias totales en el póquer son superiores a las de la ruleta mediante una comparación. Simplemente imprime el resultado de esta comparación. ¿Cuál es tu conclusión? ¿Deberías centrarte en la ruleta o en el póquer?

`@hint`
\- ¡Ya calculaste parcialmente la respuesta a esta pregunta en el ejercicio anterior!
\- Para comprobar si 6 es mayor que 5, escribe `6 > 5`. Esto devuelve un valor lógico (`TRUE` or `FALSE`).

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Calcula las ganancias totales del póker y la ruleta
total\_poker <-
total\_roulette <-

# Comprueba si obtuviste ganancias totales más altas en el póker que en la ruleta

\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Calcula las ganancias totales del póker y la ruleta
total\_poker <- sum(poker\_vector)
total\_roulette <- sum(roulette\_vector)

# Comprueba si obtuviste ganancias totales más altas en el póker que en la ruleta
total\_poker > total\_roulette
\`\`\`

`@sct`
\`\`\`{r}
msg <- "No cambies nada en la definición y el nombre de `poker_vector` y `roulette_vector`."
ex()  %>% check\_object("days\_vector", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector", undefined\_msg = msg)  %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)


ex()  %>% check\_object("total\_poker")  %>% check\_equal(incorrect\_msg = "Asegúrate de asignar a `total_poker` la suma de `poker_vector`. Usa `sum()`.")
ex () %>% check\_object ("total\_roulette") %>% check\_equal(incorrect\_msg = "Asegúrate de asignar a `total_roulette` la suma de `roulette_vector`. Usa `sum()`.")
ex () %>% check\_output\_expr ("total\_poker > total\_roulette",missing\_msg = "¿Has realizado correctamente la comparación? Para comprobar si `total_poker` es superior a `total_roulette`, puedes usar `total_poker > total_roulette`.")

success\_msg("¡Buen trabajo!  Continúa con el siguiente ejercicio").
\`\`\`

---

## Selección de vectores: los buenos tiempos

```yaml
type: NormalExercise
key: 8d78be44e9
xp: 100
skills:
\- 1
```

Tu presentimiento parecía correcto. Parece que el póquer es más para ti que la ruleta. 

Otra posible vía de investigación es tu desempeño al principio de la semana laboral en comparación con tu desempeño al final de la misma. Te tomaste un par de cócteles Margarita al final de la semana... 

Para responder a esa pregunta, solo querrás centrarte en una selección del `total_vector`. En otras palabras, nuestro objetivo es seleccionar elementos específicos del vector. Para seleccionar elementos de un vector (y posteriormente matrices, marcos de datos, etc.), puedes utilizar corchetes. Entre corchetes, indica qué elementos seleccionar. Por ejemplo, para seleccionar el primer elemento del vector, escribe `poker_vector[1]`. Para seleccionar el segundo elemento del vector, escribe `poker_vector[2]`, etc. Observa que el primer elemento de un vector tiene un índice 1, no 0 como en muchos otros lenguajes de programación.

`@instructions`
Asigna los resultados de póker del miércoles a la variable `poker_wednesday`.

`@hint`
El miércoles es el tercer elemento de `poker_vector` y, por lo tanto, se puede seleccionar con `poker_vector[3]`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Definir una nueva variable en función de una selección
poker\_wednesday <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Definir una nueva variable en función de una selección
poker\_wednesday <- poker\_vector\[3]
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("poker\_wednesday", undefined\_msg = "Asegúrate que la variable `poker_wednesday` esté definida.") %>% check\_equal(incorrect\_msg = "Parece que `poker_wednesday` no contiene el valor correcto del `poker_vector`.")


success\_msg("¡Buen trabajo! R también permite seleccionar varios elementos de un vector a la vez. ¡Aprende cómo hacerlo en el próximo ejercicio!")
\`\`\`

---

## Selección vectorial: los buenos tiempos (2)

```yaml
type: NormalExercise
key: '1351521670'
xp: 100
skills:
\- 1
```

¿Quieres analizar tus resultados de mitad de semana? 

Para seleccionar varios elementos de un vector, puedes añadir corchetes al final del mismo. Puedes indicar entre paréntesis qué elementos deben seleccionarse. Por ejemplo: supongamos que quieres seleccionar el primer y el quinto día de la semana: utiliza el vector `c(1, 5)` entre corchetes. Por ejemplo, el siguiente código selecciona el primer y el quinto elemento de `poker_vector`:

```
poker\_vector\[c(1, 5)]
```

`@instructions`
Asigna los resultados de póker del martes, miércoles y jueves a la variable `poker_midweek`.

`@hint`
Usa el vector `c(2, 3, 4)` entre corchetes para seleccionar los elementos correctos de `poker_vector`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Definir una nueva variable en función de una selección
poker\_midweek <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Definir una nueva variable en función de una selección
poker\_midweek <- poker\_vector\[c(2, 3, 4)]
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("poker\_midweek") %>% check\_equal(incorrect\_msg = "Parece que `poker_midweek` no contiene los valores correctos de `poker_vector`. Puedes utilizar el vector `c(2, 3, 4)` entre corchetes.")

Ex().success\_msg("¡Bien hecho! ¡Continúa con el siguiente ejercicio para especializarte un poco más en la selección de vectores!");
\`\`\`

---

## Selección vectorial: los buenos tiempos (3)

```yaml
type: NormalExercise
key: 27976b79f4
xp: 100
skills:
\- 1
```

La selección de varios elementos de `poker_vector` con `c(2, 3, 4)` no es muy conveniente. Muchos estadísticos son perezosos por naturaleza, así que crearon una forma más sencilla de hacerlo: `c(2, 3, 4)` se puede abreviar a `2:4`, lo que genera un vector con todos los números naturales del 2 al 4.

Por lo tanto, otra forma de encontrar los resultados de mitad de semana es `poker_vector[2:4]`. Observa cómo el vector `2:4` se coloca entre los corchetes para seleccionar el elemento 2 hasta el 4.

`@instructions`
Asigna a `roulette_selection_vector` los resultados de la ruleta de martes a viernes; utiliza `:` si le facilita las cosas.

`@hint`
Asigna una selección de `roulette_vector` a `roulette_selection_vector` escribiendo `2:5` entre corchetes.

`@pre_exercise_code`
\`\`\`{r}

\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Definir una nueva variable en función de una selección
roulette\_selection\_vector <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Definir una nueva variable en función de una selección
roulette\_selection\_vector <- roulette\_vector\[2:5]
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal( eq\_condition = "equal",incorrect\_msg = msg)

ex () %>% check\_object ("roulette\_selection\_vector", undefined\_msg = "Asegúrate de definir una variable `roulette_selection_vector`.") %>% check\_equal (incorrect\_msg = "Parece que `roulette_selection_vector` no contiene la selección correcta de `roulette_vector`. Asegúrate de utilizar los índices correctos.")

success\_msg ("¡Impresionante! El operador de dos puntos es extremadamente útil y se usa muy a menudo en la programación R, así que recuérdalo bien. Continúa con el siguiente ejercicio.")
\`\`\`

---

## Selección vectorial: los buenos tiempos (4)

```yaml
type: NormalExercise
key: e6c263ddee
xp: 100
skills:
\- 1
```

Otra forma de abordar el ejercicio anterior es utilizar los nombres de los elementos vectoriales (lunes, martes,...) en lugar de sus posiciones numéricas. Por ejemplo, 

```
poker\_vector\["Monday"]
```

seleccionarás el primer elemento de `poker_vector` ya que `"Monday"` es el nombre de ese primer elemento.

Al igual que hiciste en el ejercicio anterior con los números, también puedes usar los nombres de los elementos para seleccionar varios elementos, por ejemplo: 

```
poker\_vector\[c("Monday","Tuesday")]
```

`@instructions`
\- Selecciona los tres primeros elementos de `poker_vector` usando sus nombres: `"Monday"`, `"Tuesday"` y `"Wednesday"`. Asigna el resultado de la selección a `poker_start`.
\- Calcula el promedio de los valores en `poker_start` con la función [`mean()`](http://www.rdocumentation.org/packages/base/functions/mean). Simplemente imprime el resultado para poder inspeccionarlo.

`@hint`
\- Puedes usar `c("Monday", "Tuesday", "Wednesday")` entre corchetes para crear un subconjunto apropiado de `poker_vector`.
\- Puedes usar mean `mean(poker_start)` para obtener la media de los elementos de `poker_start`. No necesitas la media de todos los elementos del póker, sino solo de los tres primeros días.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Selecciona los resultados de póker de lunes, martes y miércoles
poker\_start <- 
  
# Calcula el promedio de los elementos en poker\_start

\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# Selecciona los resultados de póker de lunes, martes y miércoles
poker\_start <- poker\_vector\[c("Monday", "Tuesday", "Wednesday")]
  
# Calcula el promedio de los elementos en poker\_start
mean(poker\_start)
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("poker\_start") %>% check\_equal(incorrect\_msg = "Parece que `poker_start` no contiene los tres primeros valores de `poker_vector`. Puedes usar `c(\"Monday\", \"Tuesday\", \"Wednesday\")` entre corchetes para hacerlo.")

ex() %>% check\_output\_expr("mean(poker\_start)", missing\_msg = "¿Has calculado correctamente el promedio de los valores de `poker_start` y lo has impreso? Usa `mean(poker_start)`.")

success\_msg("¡Buen trabajo!  Además de subdividir los vectores por índice o por nombre, también puedes establecer subconjuntos de vectores mediante la comparación. ¡Los siguientes ejercicios le mostrarán cómo hacerlo!")
\`\`\`

---

## Selección por comparación: paso 1

```yaml
type: NormalExercise
key: f0f619c901
xp: 100
skills:
\- 1
```

Al utilizar operadores de comparación podemos abordar la pregunta anterior de una manera más proactiva. 

Los operadores de comparación (lógicos) conocidos por R son:

- `<` para menos de
- `>` para más de
- `<=` para un valor menor o igual a
- `>=` para mayor o igual a
- `==` para iguales entre sí
- `! =` no son iguales entre sí

Como se vio en el capítulo anterior, indicar `6 > 5` devuelve `TRUE`. Lo bueno de R es que puedes usar estos operadores de comparación también en vectores. Por ejemplo:

```
c(4, 5, 6) > 5
\[1] FALSE FALSE TRUE
```

Este comando comprueba cada elemento del vector si la condición indicada por el operador de comparación es `TRUE` o `FALSE`.

`@instructions`
\- Comprueba qué elementos de `poker_vector` son positivos (es decir, > 0) y asígnaselos a `selection_vector`.
\- Imprime `selection_vector` para poder inspeccionarlo. La impresión le indica si ganó (`TRUE`) o perdió (`FALSE`) dinero cada día.

`@hint`
Para comprobar en qué días tus ganancias de póquer son positivas, R debería comprobar si cada elemento de `poker_vector` es mayor que cero. `some_vector > 0` es la forma de decirle a R qué es lo que buscas.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# ¿Qué días ganaste dinero jugando al póker?
selection\_vector <- 
  
# Imprimir selection\_vector

\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# ¿Qué días ganaste dinero jugando al póker?
selection\_vector <- poker\_vector > 0
  
# Imprimir selection\_vector
selection\_vector
\`\`\`

`@sct`
\`\`\`{r}
msg <- "No cambies nada en la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex () %>% check\_object("selection\_vector") %>% check\_equal (incorrect\_msg = "Parece que `selection_vector` no contiene el resultado correcto. Recuerda que R usa operaciones basadas en elementos para los vectores").

ex () %>% check\_output\_expr ("selection\_vector", missing\_msg = "No olvides imprimir `selection_vector` escribiendo el nombre de la variable en una nueva línea.")

success\_msg("¡Genial!")
\`\`\`

---

## Selección por comparación: paso 2

```yaml
type: NormalExercise
key: 2754fc5cd4
xp: 100
skills:
\- 1
```

Trabajar con comparaciones le facilitará la vida en la analítica de datos. En lugar de seleccionar un subconjunto de días para investigarlo (como antes), simplemente puedes pedirle a R que devuelva solo aquellos días en los que obtuviste un saldo positivo en el póquer. 

En los ejercicios anteriores utilizaste `selection_vector <- poker_vector > 0` para encontrar los días en los que obtuviste una saldo positivo en el póquer. Ahora, te gustaría saber no solo los días en que ganaste, sino también cuánto ganaste en esos días. 

Puedes seleccionar los elementos que desees colocando `selection_vector` entre los corchetes que siguen a `poker_vector`:

```
poker\_vector\[selection\_vector]
```

R sabe qué hacer cuando pasas un vector lógico entre corchetes: solo seleccionará los elementos que correspondan a `TRUE` en `selection_vector`.

`@instructions`
Usa `selection_vector` entre corchetes para asignar las cantidades que ganaste en los días con saldo positivo a la variable `poker_winning_days`.

`@hint`
Usa `poker_vector[selection_vector]` para seleccionar los elementos deseados de `poker_vector` y asigna el resultado a `poker_winning_days`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# ¿Qué días ganaste dinero jugando al póker?
selection\_vector <- poker\_vector > 0

# Selecciona de poker\_vector estos días
poker\_winning\_days <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# ¿Qué días ganaste dinero jugando al póker?
selection\_vector <- poker\_vector > 0

# Selecciona de poker\_vector estos días
poker\_winning\_days <- poker\_vector\[selection\_vector]
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."
ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector",  undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal",incorrect\_msg = msg)

ex() %>% check\_object("selection\_vector") %>% check\_equal(incorrect\_msg = "No cambies la forma en que se calcula el `selection_vector`").

ex() %>% check\_object("poker\_winning\_days") %>% check\_equal(incorrect\_msg = "Parece que `poker_winning_days` no contiene el resultado correcto. Usa `poker_vector[selection_vector]`.")

success\_msg("¡Buen trabajo!  Continúa con el siguiente ejercicio").
\`\`\`

---

## Selección avanzada

```yaml
type: NormalExercise
key: 59e8dcbbd5
xp: 100
skills:
\- 1
```

Al igual que hiciste con el póker, también querrás saber aquellos días en los que obtuviste un saldo positivo para la ruleta.

`@instructions`
\- Crea la variable `selection_vector`, esta vez para ver si obtuviste ganancias con la ruleta durante diferentes días.
\- Asigna a la variable `roulette_winning_days` las cantidades que ganaste en los días en los que terminaste con un resultado positivo en la ruleta. Por lo tanto, este vector contiene las ganancias positivas de `roulette_vector`.

`@hint`
Una vez que hayas calculado correctamente `selection_vector`, puedes volver a usar `roulette_vector[selection_vector]` para seleccionar los resultados positivos de `roulette_vector`.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# ¿Qué días ganaste dinero en la ruleta?
selection\_vector <-

# Selecciona de roulette\_vector estos días
roulette\_winning\_days <-
\`\`\`

`@solution`
\`\`\`{r}
# Ganancias de póker y ruleta de lunes a viernes:
poker\_vector <- c(140, -50, 20, -120, 240)
roulette\_vector <- c(-24, -50, 100, -350, 10)
days\_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker\_vector) <- days\_vector
names(roulette\_vector) <- days\_vector

# ¿Qué días ganaste dinero en la ruleta?
selection\_vector <- roulette\_vector > 0

# Selecciona de roulette\_vector estos días
roulette\_winning\_days <- roulette\_vector\[selection\_vector]
\`\`\`

`@sct`
\`\`\`{r}
msg = "No cambies nada sobre la definición y el nombre de `poker_vector` y `roulette_vector`."

ex() %>% check\_object("days\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("poker\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex() %>% check\_object("roulette\_vector", undefined\_msg = msg) %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)

ex () %>% check\_object("selection\_vector") %>% check\_equal (incorrect\_msg = "Parece que `selection_vector` no contiene el resultado correcto. Usa `roulette_vector > 0`.")

ex() %>% check\_object("roulette\_winning\_days") %>% check\_equal(incorrect\_msg = "Parece que `roulette_winning_days` no contiene el resultado correcto. Usa `roulette_vector[selection_vector]`.")


success\_msg("¡Buen trabajo! Este ejercicio concluye el capítulo sobre vectores. El próximo capítulo te presentará la versión bidimensional de los vectores: las matrices").
\`\`\`
