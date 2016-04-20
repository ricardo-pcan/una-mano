# Key Name: Una Mano
## Problema
Hoy en día con el auge de las redes sociales y la interconectividad del mundo entero gracias al internet puedes conectar con cualquier persona del mundo, pero no siempre puedes conectar con las personas que pueden ayudarte a iniciar o colaborarte con un proyecto en la universidad.
He aprendido que como estudiante tienes más oportunidades de llegar a ralizar proyectos u empezar tu propio negocio ya que tienes el tiempo, la asesoria y la energía, el único problema es que no siempre estas rodeado de las personas que podrián colaborarte en tu proyecto, tal vez seas bueno en algo pero siempre se requiere de gente con habilidades o capacidades diferentes a las tuyas, pero con los mismo intereses en común.

Este proyecto lo que busca es crear una plataforma en donde sus usuarios, que se busca que en gran mayoria sean estudiantes, puedan conectar con personas que quieren emprender un proyecto en común, compartir experiencia, colaborar y generar redes sociales y contactos que sirven en el mundo laboral, aprovechando las cortas distancias gracias a la red.

## Descripción del problema

El usuario deberá identificarse con un correo y una contraseña para poder llenar su perfil el cuál constará de:

* Nombre
* Apellido Paterno
* Apellido materno
* Edad
* Institución procedente
* Carrera o linea de especialización
* Nombre de usuario
* Intereses
* Foto de pérfil
* Sitio web o blog
* Twitter
* Facebook
* Instagram
* Teléfono


El usuario podrá crear proyectos en los que se detallará con una descripción la razón del proyecto, los perfiles que requiere, cada proyecto deberá tener una categoria la cuál dependerá del perfil de las tareas (informática, derecho, mecánica, ambiental, etc).

Podrán subir archivos que serán publicos o privados, dependiendo del nivel de privacidad que tengan, lo archivos públicos serán visibles a un público en general,  los archivos privados solo podrán ser vistos una vez que el creador del proyecto los cite.

También tendrán oportunidad de linkear un video e imágenes para una mayor interacción del proyecto.

El usuario deberá pertenecer a una institución registrada, la cuál se identifica por el nombre completo, las siglas de la institución la ubicación.

El usuario podrá crear los proyectos que quiera en las categorias que requiera.

Cuándo un usuario crea un proyecto otros usuarios pueden verlo y pueden interesarse en el, cuándo esto suceda el usuario propietario del proyecto será notificado y podrá ver los perfiles de los usuarios interesados para poder contactarlos o citarlos para un charla. Cuándo citen a un usuario este será notificado.

Un usuario creador tambien puede interesarse en otros proyectos y pueden citarlo.

Los usuarios podrán ver proyectos de sus categorias y también de categorias ajenas a ellos, podrán ser filtrados por categorias.

Los proyectos podrán tener un rating dependiendo de las personas interesadas y el creador podrá poner en estado activo, cerrado o inactivo.

Aunque el proyecto tenga un perfil definido no quiere decir que solo usuarios con ese perfil puedan colaborar o puedan ser requeridos. Pueden colaborar usuarios con perfiles que se quieran en un proyecto.

## Descripción de las entidades

* **Emprendedor**: Es la entidad que crea y puede estar interesado en proyectos.
* **Proyecto**: Es la entidad que puede ser creada por los emprendedores y en la que se especifica la descripción del proyecto, su categoria y perfiles que ocupa 'paro'.
* **Estado del proyecto**: Es un estado en el que s epuede encontrar un proyecto y puede ser *buscado, inactivo u cerrado*
* **Institución**: Es la entidad a la que pertenecen los usuarios y es una institución educativa ya se pública o privada, esta debe ser dada de alta bajo una petición a los administradores.
* **Categoria o perfil**: Es la entidad que describe el perfil del usuario, con está puede encontrar proyectos para contribuir y tambien decribe el perfil del proyecto.
* **Archivos**: Es la entidad que describe el almacenamiento y privacidad de un archivo para dado proyecto.
* **Peticiones**: En esta entidad se registran las peticiones o los interesados en el proyecto.
* **Citas**: Esta entidad es definida por las respuestas de los proyectos a tu interes.
* **Video**: Esta entidad es la encargada de guardar los links de los videos del proyecto.


## Behavior description
### Intitutions:
* Una institución debe ser creada por un admin.
* Una institución debe tener un alias y este no debe rebasar los 20 caracteres ni puede ser nulo
* Una institución puede o no tener una imagen de perfil.

### Emprendedores
* Un emprendedor debe tener un nombre y apellido
* El nombre y el apellido no deben rebasar los 100 caracteres
* El emprendedor debe tener una fecha de nacimiento válida
* El emprendedor no puede ser menor de 10 años
* El emprendedor debe tene run nombre de usuario y este debe ser único