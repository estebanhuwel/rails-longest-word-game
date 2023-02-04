<!-- QUE TENEMOS QUE HACER -->
<!-- 1 es crear una pagina que muestre parametros
del juego, es decir letras aleatorias, con un formulario para que el usuario escriba una palabra -->
<!-- 2 una pagina que reciba el formulario, compute el puntaje
y muestre el puntaje total -->

<!-- creamos el controlador desde la terminal
rails generate controller Games -->

<!-- el controlador va a tener dos acciones
la accion NEW y la accion score, entonces en views generamos
esas dos paginas score y new, ademas de definir ambas acciones
en lo que seria nuestro controlador -->

<!-- entonces dentro del controlador colocamos los dos metodos
def new y def score, ya teniendo los dos metodos o acciones
creamos nuestras paginas score.html.erb y la otra pagina
new.html.erb -->

<!-- y para no olvidarnos dentro de routes, seguimos el formato,
en este caso verbo "camino/path", to: "controller#action"por ende: get "new", to: "games#new"
get "score", to: "games#score" -->
