Feature: Inicio de sesión de usuarios en la aplicación

  Como usuario registrado en la aplicación
  Quiero iniciar sesión en mi cuenta con mi nombre de usuario y contraseña
  Para acceder a mis datos y continuar con mis actividades de gestión de mis cultivos en la plataforma.

  Scenario: Inicio de sesión exitoso
    Given que es un usuario registrado en la plataforma
    When ingresa su nombre de usuario y contraseña en el formulario de inicio de sesión
    Then accede a su cuenta y puede comenzar a utilizar la plataforma con sus datos previos.

  Scenario: Inicio de sesión fallido
    Given que es un usuario registrado en la plataforma
    When intenta iniciar sesión con un nombre de usuario o contraseña incorrecta
    Then recibe un mensaje de error indicando que las credenciales no son válidas y no puede acceder a la plataforma.
