# PracticasClase
Practicas Realizadas en Clase.


<h3>30-09-2019 Tarea Saludo.jsp</h3>

Tarea <strong>saludo.jsp</strong> en la que se pide que mediante un pequeño formuilario en la que se pide el nombre y el sexo, devuelva el texto:

<p align="center">Buenos Dias, tardes o noches, dependiendo de la hora; el nombre y la hora actual.</p>

<h3>02-10-2019 Tarea edadPersona.jsp</h3>

Intrducimos el nombre y la fecha de nacimiento. Comprobar cuantos años tiene una persona.

Entradfa de datos:
Nombre:
Fecah de nacimiento dd/mm/aaaa
enviar
se introduce fecha por el cliente
Se transforma el String fechNac a LocalDate
ver of(int year, int month, int dayOfMonth)
La clase Period calcula el tiempo de diferencia entre dos fechas

https://docs.oracle.com/javase/8/docs/api/java/time/Period.html
Si la fecha es posterior a la fecha actual, deberá indicar que la persona no ha nacido. Para ello utilizamos isBefore

<p align="center">Hola nombre tienes x años, meses y dias.</p>
