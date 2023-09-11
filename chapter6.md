---
title_meta: Capítulo 6
title: Listas
description: >-
  A diferencia de los vectores, las listas pueden contener componentes de diferentes tipos, del mismo modo que las listas de tareas pendientes pueden contener diferentes categorías de tareas. Este capítulo te enseñará cómo crear, nombrar y crear subconjuntos de estas listas.
---

## Listas, ¿para qué las necesitarías?

```yaml
type: NormalExercise
key: 2afcdb6a76ec91bf266de9b2ac295d844d7bb004
xp: 100
skills:
- 1
```

¡Felicidades! En este punto del curso ya estás familiarizado con:

- **Vectors** (matriz unidimensional): pueden contener valores numéricos, de caracteres o lógicos. Todos los elementos de un vector tienen el mismo tipo de datos.
- **Matrices** (matriz bidimensional): pueden contener valores numéricos, de caracteres o lógicos. Todos los elementos de una matriz tienen el mismo tipo de datos.
- **Data frames** (objetos bidimensionales): pueden contener valores numéricos, de caracteres o lógicos. Dentro de una columna, todos los elementos tienen el mismo tipo de datos, pero las diferentes columnas pueden tener un tipo de datos diferente.

Bastante bonito para un novato en R, ¿verdad? ;-)

`@instructions`
¡Envía la respuesta para empezar a aprender todo sobre las listas!

`@hint`
¡Solo tienes que enviar la respuesta!

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Solo tienes que enviar la respuesta
\`\`\`

`@solution`
\`\`\`{r}
# Solo tiene que enviar la respuesta.
\`\`\`

`@sct`
```{r}
success\_msg("Preparados, listos, ¡ya! Continúa con el siguiente ejercicio»).
```

---

## Listas, ¿para qué las necesitarías? (2)

```yaml
type: NormalExercise
key: 68f93c5c504616bd18876da52cd123277d56fc8b
xp: 100
skills:
- 1
```

Una **lista** en R es similar a la lista de tareas pendientes del trabajo o la escuela: lo más probable es que los diferentes elementos de esa lista difieran en longitud, características y tipo de actividad que se debe realizar. 

Una lista en R le permite reunir una variedad de objetos bajo un nombre (es decir, el nombre de la lista) de forma ordenada. Estos objetos pueden ser matrices, vectores, marcos de datos, incluso otras listas, etc. Ni siquiera se requiere que estos objetos estén relacionados entre sí de ninguna manera.

Se podría decir que una lista es una especie de supertipo de datos: ¡puedes almacenar prácticamente cualquier dato en ella!

`@instructions`
Envía la respuesta para iniciar el primer ejercicio de las listas.

`@hint`
Envía la respuesta para iniciar el primer ejercicio de las listas.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Envía la respuesta para iniciar el primer ejercicio de las listas.
\`\`\`

`@solution`
\`\`\`{r}
# Envía la respuesta para iniciar el primer ejercicio de las listas.
\`\`\`

`@sct`
```{r}
success\_msg("Bien. ¡Vamos a ensuciarnos las manos!")
```

---

## Crear una lista

```yaml
type: NormalExercise
key: 4beee9cb532c889903218b49b83ab5ef133eac83
xp: 100
skills:
- 1
```

¡Vamos a crear nuestra primera lista! Para construir una lista, usa la función [`list()`](http://www.rdocumentation.org/packages/base/functions/list): 

```
my\_list <- list(comp1, comp2 ...)
```

Los argumentos de la función de lista son los componentes de la lista. Recuerde, estos componentes pueden ser matrices, vectores, otras listas,...

`@instructions`
Construye una lista, denominada `my_list`, que contenga las variables `my_vector`, `my_matrix` y `my_df` como componentes de la lista.

`@hint`
Utiliza la función [`list()`](http://www.rdocumentation.org/packages/base/functions/list) con `my_vector`, `my_matrix` y `my_df` como argumentos separados por una coma.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Vector con números del 1 al 10
my\_vector <- 1:10 

# Matriz con números del 1 al 9
my\_matrix <- matrix(1:9, ncol = 3)

# Primeros 10 elementos del data frame (incluido) mtcars
my\_df <- mtcars\[1:10,]

# Construye una lista con estos diferentes elements:
my\_list <-
\`\`\`

`@solution`
\`\`\`{r}
# Vector con números del 1 al 10
my\_vector <- 1:10 

# Matriz con números del 1 al 9
my\_matrix <- matrix(1:9, ncol = 3)

# Primeros 10 elementos del data frame (incluido) mtcars
my\_df <- mtcars\[1:10,]

# Construye una lista con estos diferentes elements:
my\_list <- list(my\_vector, my\_matrix, my\_df)
\`\`\`

`@sct`
\`\`\`{r}
msg = "¡No elimines ni cambies la definición de las variables my\_vector`, `my\_matrix` o `my\_df`!"
ex() %>% check\_object("my\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("my\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("my\_df", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("my\_list") %>% check\_equal(incorrect\_msg = "Parece que `my_list` no contiene los elementos correctos. Asegúrate de pasar las variables  `my_vector`, `my_matrix` y `my_df` a la función `list()`, separadas por comas, en este orden.")

success\_msg("¡Maravilloso! Vamos al siguiente ejercicio.")
\`\`\`

---

## Crear una lista con nombre

```yaml
type: NormalExercise
key: 89dd0126568b1ff5a84033c571907a8a282245e4
xp: 100
skills:
- 1
```

¡Bien hecho, estás en racha!

Al igual que en tu lista de tareas pendientes, debes evitar no saber o recordar lo que significan los componentes de tu lista. Es por eso que debes darles nombres 

```
my\_list <- list(name1 = your\_comp1, 
name2 = your\_comp2)
``` 

Esto crea una lista con los componentes que se denominan `name1`, `name2`, etc. Si quieres nombrar tus listas después de haberlas creado, puedes usar la función `names()` como lo hiciste con los vectores. Los siguientes comandos son totalmente equivalentes a la asignación above:

```
my\_list <- list(your\_comp1, your\_comp2)
names(my\_list) <- c("name1", "name2")
```

`@instructions`
- Cambia el código del ejercicio anterior (consulta el editor) añadiendo nombres a los componentes. Utiliza para `my_vector` el nombre `vec`, para `my_matrix` el nombre `mat` y para `my_df` el nombre `df`.
- Imprime `my_list` para poder inspeccionar el resultado.

`@hint`
El primer método para asignar nombres a los componentes de la lista es el más sencillo. Empieza con
my\_list <- list(vec = my\_vector)
```
Añade los otros dos componentes de forma similar.

`@pre_exercise_code`
\`\`\`{r}
# no pec
\`\`\`

`@sample_code`
\`\`\`{r}
# Vector con números del 1 al 10
my\_vector <- 1:10 

# Matriz con números del 1 al 9
my\_matrix <- matrix(1:9, ncol = 3)

# Primeros 10 elementos del data frame (incluido) mtcars
my\_df <- mtcars\[1:10,]

# Adapta la llamada list () para dar los nombres de los componentes
my\_list <- list(my\_vector, my\_matrix, my\_df)

# Imprime my\_list
\`\`\`

`@solution`
\`\`\`{r}
# Vector con números del 1 al 10
my\_vector <- 1:10 

# Matriz con números del 1 al 9
my\_matrix <- matrix(1:9, ncol = 3)

# Primeros 10 elementos del data frame (incluido) mtcars
my\_df <- mtcars\[1:10,]

# Adapta la llamada list () para dar los nombres de los componentes
my\_list <- list(vec = my\_vector, mat = my\_matrix, df = my\_df)

# Imprime my\_list
my\_list
\`\`\`

`@sct`
\`\`\`{r}
msg = "¡No elimines ni cambies la definición de las variables `my_vector`, `my_matrix` o `my_df`!"
ex() %>% check\_object("my\_vector", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("my\_matrix", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("my\_df", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("my\_list") %>% check\_equal(incorrect\_msg = "Parece que `my_list` no contiene los elementos correctos.")

ex() %>% check\_object("my\_list") %>% check\_equal(eq\_condition = "equal",incorrect\_msg = "Parece que `my_list` no contiene el nombre correcto para los componentes. Asegúrese de utilizar los nombres `vec`, `mat` y `df`, respectivamente. Echa un vistazo a la pista si tienes dificultades.")

ex() %>% check\_output\_expr("my\_list", missing\_msg = "¡No olvides imprimir `my_list` en la consola! Simplemente añade `my_list` en una nueva línea del editor.")

success\_msg = "¡Buen trabajo! Ahora no solo sabes cómo crear listas, sino que también puedes ponerles nombre; una habilidad que te resultará muy útil en la práctica. Continúa con el siguiente ejercicio»).
\`\`\`

---

## Crear una lista con nombre (2)

```yaml
type: NormalExercise
key: 19fd17cc792ef870c1558b3a9bae08c1d1e3acae
xp: 100
skills:
- 1
```

Como un gran aficionado al cine (recuerda tu trabajo en LucasFilms), decides empezar a almacenar información sobre buenas películas con la ayuda de listas. 

Empieza por crear una lista para la película «The Shining». Ya hemos creado las variables `mov`, `act` and `rev` en tu R workspace. No dudes en echarles un vistazo en la consola.

`@instructions`
Completa el código en el editor para crear shining\_list; contiene tres elements:

- `moviename`: una cadena de caracteres con el título de la película (almacenada en `mov`)
- `actors`: un vector con los nombres de los actores principales (almacenados en act`)
- `reviews`: un data frame que contiene algunas reseñas (almacenadas en `rev`)

No olvides nombrar los componentes de la lista en consecuencia (los nombres son `moviename`, `actors` y `reviews`).

`@hint`
`shining_list <- list(moviename = mov)` es solo una parte de la solución; es tu trabajo añadir también `act` y `rev` a la lista, con los nombres correctos.

`@pre_exercise_code`
```{r}
mov <- "The Shining"
act      <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
sources     <- c("IMDb1","IMDb2","IMDb3")
comments    <- c("Best Horror Film I Have Ever Seen","A truly brilliant and scary film from Stanley Kubrick","A masterpiece of psychological horror")
scores      <- c(4.5,4,5)
rev     <- data.frame(scores, sources, comments)
rm(scores, sources, comments)
```

`@sample_code`
\`\`\`{r}
# Las variables mov, act y rev están disponibles

# Termina el código para construir shining\_list
shining\_list <- list(moviename = mov)
\`\`\`

`@solution`
\`\`\`{r}
# Las variables mov, act y rev están disponibles

# Termina el código para construir shining\_list
shining\_list <- list(moviename = mov, actors = act, reviews = rev)
\`\`\`

`@sct`
\`\`\`{r}
msg = "¡No elimine ni cambie la definición de las variables preestablecidas!"
ex()  %>% check\_object("mov", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex()  %>% check\_object("rev", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex()  %>% check\_object("act", undefined\_msg = msg)  %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_object("shining\_list") %>% check\_equal(incorrect\_msg = "Parece que `shining_list` no contiene los elementos correctos: el primer elemento debería ser `mov`, el segundo elemento `act` y el tercer `rev`.")

ex() %>% check\_object("shining\_list") %>% check\_equal(eq\_condition = "equal",incorrect\_msg = "Parece que las componentes de`shining_list` no tienen el nombre correcto: nombra al primer elemento `moviename`, al segundo elemento `actors` y al tercer elemento `reviews`.")

success\_msg("¡Maravilloso! Ahora sabes cómo crear y nombrar listas. Como en los capítulos anteriores, veamos cómo seleccionar elementos para las listas. Vamos al siguiente ejercicio.")
\`\`\`

---

## Selección de elementos de una lista

```yaml
type: NormalExercise
key: 1ef3278944562caef64b9927dd2ddb6ee52334cd
xp: 100
skills:
- 1
```

Una lista a menudo se construirá a partir de numerosos elementos y componentes. Por lo tanto, obtener un solo elemento, varios elementos o un componente no siempre es sencillo. 

Una forma de seleccionar un componente es utilizar la posición numerada de ese componente. Por ejemplo, para «tomar» el primer componente de `shining_list`, escribe 

```
shining\_list\[\[1]]
```

Una forma rápida de comprobarlo es escribiéndolo en la consola. Es importante recordar que para seleccionar elementos de vectores, debes utilizar un solo cuadrado brackets: `[ ]`. ¡No los confundas!

También puede hacer referencia a los nombres de los componentes con`[[ ]]` o con el signo `$`. Ambos seleccionarán el data frame que representa las reviews: 

```
shining\_list\[\["reviews"]]
shining\_list$reviews
``` 

Además de seleccionar componentes, a menudo es necesario seleccionar elementos específicos de estos componentes. Por ejemplo, con `shining_list[[2]][1]` se selecciona del segundo componente, `actors` (`shining_list[[2]]`) y el primer elemento (`[1]`). Cuando escribas esto en la consola, verás que la respuesta es Jack Nicholson.

`@instructions`
- Selecciona el vector `shining_list` que representa a los actores. Imprime este vector.
- Selecciona el segundo elemento del vector `shining_list`  que representa a los actores. Imprímelo como antes.

`@hint`
- Para seleccionar el vector que representa a los actores, puedes usar `$actors`.
- Para seleccionar el tercer elemento del vector que representa a los actores, utiliza `shining_list$actors[3]`. ¿Qué hay que cambiar para seleccionar el segundo elemento?

`@pre_exercise_code`
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/intro\_to\_r/shining\_list.RData"))
```

`@sample_code`
\`\`\`{r}
# shining\_list ya está precargado en el espacio de trabajo

# Imprime el vector que representa a los actores


# Imprime el segundo elemento del vector que representa a los actores
\`\`\`

`@solution`
\`\`\`{r}
# shining\_list ya está precargado en el espacio de trabajo

# Imprime el vector que representa a los actores
shining\_list$actors

# Imprime el segundo elemento del vector que representa a los actores
shining\_list$actors\[2]
\`\`\`

`@sct`
\`\`\`{r}
msg <- "¡No elimines ni cambies la definición de `shining_list`, que está precargada en el workspace!"
ex() %>% check\_object("shining\_list", undefined\_msg = msg) %>% check\_equal(incorrect\_msg = msg)

ex() %>% check\_output\_expr("shining\_list$actors", missing\_msg = "¿Has seleccionado e impreso correctamente el vector que representa a los actores? Puedes usar `shining_list$actors`, por ejemplo.")

ex() %>% check\_output\_expr("shining\_list$actors\[2]", missing\_msg = "Para seleccionar el segundo actor del vector que representa a los actores, debes encadenar selections: `shining_list$actors` que representa a los actores, de modo que puedas añadir un `[2]` para seleccionar el segundo elemento")

success\_msg = "¡Buen trabajo! Seleccionar elementos de las listas es bastante fácil, ¿no? Continúa con el siguiente ejercicio»).
\`\`\`

---

## Crear una lista nueva para otra película

```yaml
type: NormalExercise
key: ce10c83e5b
xp: 100
```

Encontraste reseñas de otra película, más reciente, de Jack Nicholson ¡The Departed!

| Scores | Comments               |
|--------|------------------------|
| 4.6    | I would watch it again |
| 5      | Amazing!               |
| 4.8    | I liked it             |
| 5      | One of the best movies |
| 4.2    | Fascinating plot       |

Sería útil reunir toda la información sobre la película, como el título, los actores y las reseñas, en una sola variable. Dado que estos fragmentos de datos tienen formas diferentes, es natural combinarlos en una variable de tipo lista.

`movie_title`, que contiene el título de la película, y `movie_actors`, que contiene los nombres de algunos de los actores de la película, están disponibles en tu workspace.

`@instructions`
- Crea dos vectores, denominados `scores` y `comments`, que contengan la información de las opiniones que se muestran en la tabla.
- Encuentra el promedio del vector `scores` y guárdalo como `avg_review`.
- Combina los vectores de `scores` y `comments` en un «data frame» llamado `reviews_df`.
- Crea una lista, llamada `departed_list`, que contenga `movie_title`, `movie_actors`, el data frame de reseñas como `reviews_df` y la puntuación media de las reseñas como `avg_review`, e imprímela.

`@hint`
- Usarás la función `c()` para crear los vectores.
- Para encontrar el promedio de un vector, pasa el nombre del vector a la función `mean()`.
- Utiliza la función `data.frame()` para crear un data frame `reviews_df`.

`@pre_exercise_code`
```{r}
movie\_title <- "The Departed"
movie\_actors <- c("Leonardo DiCaprio", "Matt Damon", "Jack Nicholson","Mark Wahlberg","Vera Farmiga", "Martin Sheen")
```

`@sample_code`
\`\`\`{r}
# Utiliza la tabla del ejercicio para definir los vectores de comentarios y puntuaciones
scores <- c(4.6, 5, 4.8, 5, \_\_\_
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", \_\_\_ 

# Guarda el promedio del vector de puntuaciones como avg\_review


# Combina puntuaciones y comentarios en el data frame reviews\_df


# Crea e imprime una lista, llamada departed\_list


\`\`\`

`@solution`
\`\`\`{r}
# Utiliza la tabla del ejercicio para definir los vectores de comentarios y puntuaciones
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Guarda el promedio del vector de puntuaciones como avg\_review
avg\_review <- mean(scores)

# Combina puntuaciones y comentarios en el data frame reviews\_df
reviews\_df <- data.frame(scores, comments)

# Crea e imprime una lista, llamada departed\_list
departed\_list <- list(movie\_title, movie\_actors, reviews\_df, avg\_review)
departed\_list
\`\`\`

`@sct`
\`\`\`{r}
msg <- "No cambies ni elimines los objetos precargados."

ex() %>% check\_object("movie\_title") %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)
ex() %>% check\_object("movie\_actors")  %>% check\_equal(eq\_condition = "equal", incorrect\_msg = msg)
ex() %>% check\_object("scores") %>% check\_equal(eq\_condition = "equal", incorrect\_msg = "¿Creaste el vector `scores` correctamente?")
ex() %>% check\_object("comments") %>% check\_equal(eq\_condition = "equal", incorrect\_msg = "¿Creaste el vector de comentarios correctamente?")
ex() %>% check\_correct(
  check\_object(.,"avg\_review") %>% check\_equal(eq\_condition = "equal", incorrect\_msg = "¿Creaste el objeto `avg_review` correctamente?"),
  check\_function(.,"mean") %>% check\_arg("x") %>% check\_equal()
)
ex() %>% check\_correct(
  check\_object(.,"reviews\_df") %>% check\_equal(eq\_condition = "equal", incorrect\_msg = "¿Creaste `reviews_df` correctamente?"),
  check\_function(.,"data.frame") %>% {
    check\_arg(.,"..1") %>% check\_equal()
    check\_arg(.,"..2") %>% check\_equal()
  }
)
ex() %>% check\_correct(
  check\_object(.,"departed\_list") %>% check\_equal(eq\_condition = "equal", incorrect\_msg = "¿Creaste `departed_list` correctamente?"),
  check\_function(.,"list") %>% {
    check\_arg(.,"..1") %>% check\_equal()
    check\_arg(.,"..2") %>% check\_equal()
    check\_arg(.,"..3") %>% check\_equal()
    check\_arg(.,"..4") %>% check\_equal()
  }
)
ex() %>% check\_output\_expr("departed\_list", missing\_msg = "¿Imprimiste `departed_list`?")

success\_msg("¡Buen trabajo! Creaste correctamente otra lista de información de películas y combinaste diferentes componentes en una sola lista. ¡Enhorabuena por terminar el curso!")
\`\`\`
