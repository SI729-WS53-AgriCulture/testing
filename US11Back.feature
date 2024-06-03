Feature: Obtener datos del usuario mediante la API RESTful

  Como desarrollador,
  Quiero implementar el RESTful API que permitirá obtener los datos del usuario
  Para permitir a los usuarios ver su perfil y acceder a la información almacenada sobre ellos.

  Scenario: Perfil del usuario encontrado
    Given que el endpoint "/api/v1/users/{id}/profile" está disponible
    When envío una solicitud GET con el ID del usuario
    Then recibo una respuesta con estado 200 y la información del perfil del usuario solicitado.

  Scenario: Perfil del usuario no encontrado
    Given que el endpoint "/api/v1/users/{id}/profile" está disponible
    When envío una solicitud GET con un ID que no existe
    Then recibo una respuesta con estado 404 y un mensaje indicando que no se encontró el perfil del usuario.

  Scenario: Error en la solicitud
    Given que el endpoint "/api/v1/users/{id}/profile" está disponible
    When envío una solicitud GET con un formato de ID incorrecto o mal formado
    Then recibo una respuesta con estado 400 y un mensaje indicando el error en la solicitud.
