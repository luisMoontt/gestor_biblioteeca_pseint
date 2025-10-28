<h1>PROYECTO II: Sistema Digital de Gestión de Biblioteca 📖</h1>
<h2>Universidad de San Carlos de Guatemala</h2>

_Introducción a algoritmos y sistemas de computación_

<h2>Descripción</h2>
Este proyecto fue creado con el objetivo de administrar una Biblioteca Universitaria, gestionar los usuarios, libros y los prestamos que ahi se desarrollan. Tomando en cuenta condiciones como la disponibilidad d elos libros, el tiempo de un prestamo y la implicación de una multa. Además el programa permite hacer reportes de todo.
<h2>1. Documentación Técnica 💻</h2>

<h3>1.1 Gestor de usuarios</h3>
Para gestionar los usuarios se hizo uso de una matriz que almacenara todos los datos incluidos el ID, el nombre, El identificador unico (CARNET/DPI), correo, fecha de registro y si tiene prestamos pendientes.
Hacemos uso de un menu especifico para la entidad y de validadores que nos permiten elegir que tipo de identificador queremos seleccionar, y si los digitos ingresados de este coinciden con el tipo de identificador y ademas no esta registrado, nos deja agregarlo como un usuario nuevo con historial limpio asi como permite listar sus datos.</br>
<img width="283" height="123" alt="image" src="https://github.com/user-attachments/assets/a02b6f14-285c-4caa-9c40-1f19b0a8a24a" />
<img width="551" height="377" alt="image" src="https://github.com/user-attachments/assets/0b33187e-49b4-4565-804a-6f921ec4dfea" />
<img width="533" height="404" alt="image" src="https://github.com/user-attachments/assets/90444ef0-3649-4857-9321-9bf14cba8adb" />
<h3>DIAGRAMA DE FLUJO - AgregarUsuario </h3>
<img width="756" height="459" alt="image" src="https://github.com/user-attachments/assets/de1c2ce1-b253-44c7-be63-12ae0bc9e476" />

<h3>1.2 Gestor de libros</h3>
Al gestionar los libros hacemos uso de mas matrices y arreglos para llevar un mejor control de sus estados y atributos como: Hacemos uso de una variable boleana para saber el estado del libro, esto lo hacemos para no eliminarlo pemranentemente del sistema y que nuestro historial de prestamos no se vea afectado. Ademas de esto podemos agregar un libro nuevo o si este ya existe agregarle mas existencias al stock de este mismo, cada una con un codigo unico asociado al Titulo del libro y con su propio estado tambien.</br>
<img width="792" height="241" alt="image" src="https://github.com/user-attachments/assets/57dfebd7-9e4a-44cc-b18e-390c42255edf" />
<img width="537" height="171" alt="image" src="https://github.com/user-attachments/assets/1ed06565-01c0-478c-833b-44ebe98610c4" />
<img width="616" height="237" alt="image" src="https://github.com/user-attachments/assets/8760dbbc-48d4-49bc-a3d4-b72c792c1ee5" />
<img width="721" height="389" alt="image" src="https://github.com/user-attachments/assets/2c172360-0920-45a0-bc30-52ec0705a8a5" />
<h3>DIAGRAMA DE FLUJO - AgregarLibro </h3>
<img width="496" height="453" alt="image" src="https://github.com/user-attachments/assets/c871ca8f-68f1-4d5d-a22f-99a532d7adc7" />

<h3>1.2 Gestor de prestamos y multas</h3>
Para esta parte del proyecto mucho mas compleja hacemos uso de muchos mas arreglos para controlar la cantidad de datos poseidos de esta, la intncion está mas bien el proceso que buscar genrar un prestamo pero que al mismo tiempo estos cambios se vean reflejadas en cada una de nuestras otras "entidades" como: Usuarios(Que cambie el numero de prestamos activos) asi tambien se le genere un historial de prestamos y se genere una multa en caso de no cumplir con el plazo de 7 dias. Y los libros, en los que el stock bajara y uno de los ejemplares de los titutlos se marquen como en uso.</br>
<img width="652" height="388" alt="image" src="https://github.com/user-attachments/assets/91194cbe-b0a2-44b7-9efc-b666ef837572" />
<img width="619" height="348" alt="image" src="https://github.com/user-attachments/assets/15a35c91-695d-4c78-94c9-fad8ec57d090" />
<img width="441" height="139" alt="image" src="https://github.com/user-attachments/assets/fb9491e7-b600-4f62-a2e5-1e92a21fcac4" />
<h3>DIAGRAMA DE FLUJO - RealizarPrestamo </h3>
<img width="543" height="462" alt="image" src="https://github.com/user-attachments/assets/22071b08-db3a-4a8b-8fb2-00cbd402ec0d" />

<h3>1.2 Devoluciones</h3>
Para este proceso se hace uso de una matriz de meses del año con sus días para ser mas exactos con la tardanza de la devolucion, ademas de esto se calcula un quetzal por día para la multa sobre la tardanza de la devolucion de un prestamo.</br>
<img width="488" height="231" alt="image" src="https://github.com/user-attachments/assets/67523b9c-33df-4a62-86e1-c1d514057e79" />
<img width="576" height="358" alt="image" src="https://github.com/user-attachments/assets/aefc4826-6987-417b-a337-b3cb3871c357" />
<img width="650" height="383" alt="image" src="https://github.com/user-attachments/assets/7b239ab8-8667-4c38-93fa-d96945906d3a" />
<img width="822" height="126" alt="image" src="https://github.com/user-attachments/assets/4d27a713-d721-4b4d-aaf3-6f82d1644c1f" />
<h3>DIAGRAMA DE FLUJO - Devoluciones </h3>
<img width="446" height="462" alt="image" src="https://github.com/user-attachments/assets/1311f453-20e2-452b-befa-1d53e7f8f872" />

<h2>2. Manual de Usuario 📚</h2>
<p>Este proyecto consta de 5 menús, con los que podemos elegir las opciones con el teclado númerico</p></br>

MENU PRINCIPALAl: ejecutar el programa se desplega el menu principal desde del que podemos elegir ingresar al menu de usuarios, libros, prestamos y devoluciones, y Reportes.</br>
<img width="440" height="203" alt="image" src="https://github.com/user-attachments/assets/daca8efd-c752-4e2f-9bb9-c7144044acfc" />

MENU DE LIBRO: Este menu nos permite ingresar a las opciones principales de los libros donde podemos agregar uno o si ya existe ese titulo agregar un nuevo ejemplar al que se le asigna un estado unico.
<img width="467" height="201" alt="image" src="https://github.com/user-attachments/assets/6c215992-ecf1-44ce-b4b9-b924e6ee6eaf" />
<img width="445" height="92" alt="image" src="https://github.com/user-attachments/assets/6983e6b1-7861-4da5-a708-762e2449936b" />

MENU DE USUARIO: Este menu nos permite ingresar a las opciones principales de la gestion de usuarios, agregar, listar y buscar
<img width="440" height="187" alt="image" src="https://github.com/user-attachments/assets/c3ec0bc2-5ada-4b33-b31d-4be107a96965" />

MENU DE PRESTAMO Y DEVOLUCIÓN: Este menu oermite ver las opciones de los prestamos, realziar un nuevo, ver el historial de prestamos, regresar un libro, ver las multas, etc.
<img width="412" height="207" alt="image" src="https://github.com/user-attachments/assets/2e86ca55-f5cf-4ef6-ae21-6d16c812e10b" />

<h2>3. Casos de Prueba ✅</h2>
<table>
  <tr>
    <th> # </th>
    <th>Caso de prueba</th>
    <th>Descripción</th>
    <th>Resultado esperado</th>
    <th>Resultado</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Gestor de usuario</td>
    <td>Agregar, buscar y listar usuarios</td>
    <td>Datos completos y validaciones</td>
    <td>✅</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Gestor de libro</td>
    <td>Agregar, buscar y listar eliminar</td>
    <td>Datos completos y validaciones</td>
    <td>✅</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Prestamos</td>
    <td>Realizar un prestamo de libro</td>
    <td>Cambio reflejado en los arreglos</td>
    <td>✅</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Devoluciones</td>
    <td>Realizar la devolucion de libro</td>
    <td>Cambio reflejado en los arreglos</td>
    <td>✅</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Multas</td>
    <td>Calculos por mora</td>
    <td>Cambio reflejados y multas a pagar aplicadas en el usuario</td>
    <td>✅</td>
  </tr>
</table>

<h2>4. Reporte Técnico 🔧</h2>
<h3>4.1 Limitaciones Conocidas</h3>
<p>Durante el desarrollo del proyecto pudimos encontrar algunas liimitaciones técnicas que afectan directamente al desarrollo, escalabilidad e implementacion a largo plazo de nuestro programa como una solución real a la administración de una biblioteca universitaria.
Algunas de estas limitaciones son: </p>

- Datos efímeros y no son conservados en ninguna base de datos.
- Numero definido de arreglos, le agregan un límite al número de datos.
- No existe una base de datos para la cual basar la existencia de los usuarios como personas reales
  
<h3>4.2 Justificacion de validaciones</h3>
<p>Las validaciones son importantes porque depuran los datos del proyecto, preveen posibles errores accidentales a la hora de ingresar datos y hacer busquedas y tratan de guiar por el camino de lo más simple al usuario en cuestión.
Algunas de las validaciones aplicadas en este proyecto son:</p>

- *Existencia de identificador ya registrado:* impide duplicado de identidad sobre el usuario, ademas de pedir los valores necesarios para un dpi y para un carnet respectivamente.
- *Opciones seleccionadas:* Verifica que las opciones estan dentro del menu o vuelve a mostrar el menu.
- *ID's existentes:* Verifica si el usuario o libro con el que se trabajra existe antes de trabajar con él.
- *Disponibilidad:* Verifica la disponibilidad de los libros antes de hacer los prestamos.  

<h3>4.3 Posibles mejoras</h3>
Durante el desarrollo del proyecto podemos 
<h2>Conclusion del proyecto</h2>
En este proyecto se explotaron al maximo las funciones que tiene Pseint como pseudocodigo, haciendo uso de algoritmos complejos para poder realizar las funciones basicas y otras mucho mas avanzadas de un un gestor con base de datos, haciendo uso de herramientas como las matrices y los arrays, que pese a que tenga algunos limitantes como algun leguaje de programacion mas completo, este nos e queda atrás para poder sentar las bases de la programación y diseño de programas complejos como este.
