Feature: Recuperación de contraseña olvidada mediante la API RESTful

  Como desarrollador de la aplicación Chaquitaclla
  Quiero implementar el API RESTful para la recuperación de contraseña olvidada
  Para permitir a los usuarios restablecer su contraseña y recuperar el acceso a su cuenta

  Scenario: Solicitud de recuperación de contraseña exitosa
    Given que el endpoint "/api/v1/users/forgot-password" está disponible
    And el usuario proporciona una dirección de correo electrónico válida
    When envío una solicitud POST con la dirección de correo electrónico del usuario
    Then recibo una respuesta con estado 200 y un mensaje indicando que se ha enviado un enlace de recuperación de contraseña al correo electrónico proporcionado.

  Scenario: Dirección de correo electrónico no encontrada
    Given que el endpoint "/api/v1/users/forgot-password" está disponible
    And el usuario proporciona una dirección de correo electrónico que no está registrada
    When envío una solicitud POST con la dirección de correo electrónico del usuario
    Then recibo una respuesta con estado 404 y un mensaje indicando que no se encontró la dirección de correo electrónico.

  Scenario: Error en la solicitud
    Given que el endpoint "/api/v1/users/forgot-password" está disponible
    When envío una solicitud POST con un formato de dirección de correo electrónico incorrecto o mal formado
    Then recibo una respuesta con estado 400 y un mensaje indicando el error en la solicitud.
