<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Danny Amaya - Documentación Test Mulu

Proyecto realizado en Laravel 5.4 con Homestead, se usaron las siguientes tecnologías en el desarrollo de la prueba:
- [Google API Geocoding](https://developers.google.com/maps/documentation/geocoding/intro?hl=es-419).
- [Guzzle HTTP](http://docs.guzzlephp.org/en/latest/).
- [Jquery](https://jquery.com/).
- [Bootstrap](http://getbootstrap.com/).


## Metodología del Desarrollo

Teniendo en cuenta que el objetivo principal era repartir una lista de contactos a dos agentes segun el zip code de cada uno de ellos, era necesario establecer un metodo que identificara la posición esos zip codes y establecer un criterio de ubicación para poder determinar que agente tomaba cada contacto. Teniendo en cuenta esta premisa se investigó que al tener un zip code con la ayuda de google maps podemos determinar la ubicación, al tener experiencia en el manejo de las APIs de Google pude saber que la de Geocoding era la necesaria, esta hace ubicación inversa y mediante el zip code nos da una dirección estimada, con la data que devuelve Google se incluye el estado.

Al tener esta información solo era necesario establecer el criterio de repartición, investigando encontre que todos los estados tienen algo denominado "census region" que determina la región a la cual pertenecen, esta puede ser West, South, Midwest, Northeast; Al ser dos agentes decidi que cada uno tomara dos zonas de estas y asi se determinara que agente recibe cada zip code.
## Descripción de las Tecnologías

Google API Geocoding - La geocodificación es el proceso que convierte direcciones esstandar en coordenadas geográficas, pero en este caso utilizamos la geocodificación inversa para que a través del zip code nos retornara la dirección estandar, se creo una cuenta gratis, se guardo la api key en el código para fectuar la comunicación con el proveedor.

GuzzleHTTP - Esta libreria nos permite crear clientes de manera facil para la comunicación con la API de google, la implementarla nos despreocupamos por el uso de los headers y gracias a sus metodos enviamos o recibimos la información requerida de la manera que queremos.

Jquery - AL ser un proyecto pequeño donde solo intervienen dos botonos, determiné que Jquery era el indicado, con esta libreria se facilita el uso de javascript.

Bootstrap - Framework de html, css y javascript utilizado para la creación del front-end.
## Funcionamiento de la Aplicaición

El usuario digita el nombre del contacto y el zip code, el sistema los envia via post con jquery al controlador MainController, allí envia el zip code mediante guzzle al servidor de google recibiendo como respuesta la dirección, se extrae el Estado de dicho zip code y compara con la base de datos cual es la "census region" de este, luego busca nuevamente en la base de datos a que agente corresponde dicha región, devuelve al front la respuesta del agente asignado y almacena en la tabla de contactos, el contacto ingresado.

## Base de Datos

La base datos es MySql, el log se encuentra en la raiz del proyecto, cabe recordar que los parametros de la base de datos se encuentran en el archivo de configuración correspondiente.