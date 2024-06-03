Feature: Validación de identidad del usuario mediante la API RESTful

  Como desarrollador,
  Quiero acceder a la RESTful API de usuario
  Para validar la identidad del usuario y darle el permiso de acceso a su cuenta.

  Scenario: Identidad validada exitosamente
    Given que el endpoint "/api/v1/users/{id}/validate" está disponible
    And los datos de autenticación proporcionados son correctos
    When envío una solicitud POST con el ID del usuario y los datos de autenticación
    Then recibo una respuesta con estado 200 y un token de acceso válido.

  Scenario: Datos de autenticación incorrectos
    Given que el endpoint "/api/v1/users/{id}/validate" está disponible
    And los datos de autenticación proporcionados son incorrectos
    When envío una solicitud POST con el ID del usuario y los datos de autenticación
    Then recibo una respuesta con estado 401 y un mensaje indicando que la autenticación ha fallado.
