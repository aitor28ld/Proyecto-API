# Documentación del funcionamiento de la aplicación

---

*Autor*: Aitor León

*Creado*: 27/05/2016

*Contacto*:

- Twitter: [@2Ait8r](https://twitter.com/2Ait8r)
- E-mail: ldaitor28@gmail.com
- Wordpress: [Open Binary 2.0](https://openbinary20.wordpress.com)

**Información a saber**: la documentación de este fichero podrá ser editada en cualquier momento. Podrán cambiar parámetros o librerias de python.

---

# WebPlayer con Spotify

## Software utilizado en la aplicación

La aplicación usará esencialmente Bottle y la API Restful que nos ofrece Spotify para realizar la descripción del siguiente apartado.

Escrito en lenguaje de Python, la aplicación podrá ser subida a Openshift para tener un completo funcionamiento.

**Esta aplicación se ejecuta a través del servidor web gracias a WSGI.**

Las librerías principales a usar están definidas en el fichero [setup.py](https://github.com/aitor28ld/Webplayer-con-spotify/blob/master/setup.py#L9)

## ¿En qué consiste la aplicación?

La aplicación usará Spotify cómo motor de búsqueda con autenticación por Oauth 2.

Ofrecerá la opción de realizar una búsqueda con cuatro opciones;

- Por artista
- Por canción
- Por album 
- Por lista de reproducción

Las canciones y los albums puedes escucharlos directamente en la web. 

El procedimiento que deberá seguir un usuario es el de iniciar sesión, tendrá dos enlaces:

- Uno que mostrará su información de perfil, tanto pública cómo privada
- El otro donde podrá crear una lista de reproducción vacía. 

Si algún usuario tiene problemas para llegar a entender el funcionamiento de la aplicación, podrá ver que en la página de inicio aparecerá una pequeña ayuda de como aprender a usar el buscador de la aplicación.
