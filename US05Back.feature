Feature: Registro de nuevos cultivos en la API RESTful

  Como desarrollador,
  Quiero implementar la funcionalidad en la RESTful API
  Para permitir a los usuarios registrar nuevos cultivos en la plataforma y almacenar la información relevante en la base de datos.

  Scenario: Registro de cultivo exitoso
    Given que el endpoint "/api/v1/sowings" está disponible
    And el usuario proporciona todos los datos necesarios del cultivo en el formato correcto
    When envío una solicitud POST con los datos del cultivo
    Then recibo una respuesta con estado 201 y la información del cultivo registrado.

  Scenario: Datos del cultivo incompletos o incorrectos
    Given que el endpoint "/api/v1/sowings" está disponible
    And los datos del cultivo están incompletos o en un formato incorrecto
    When envío una solicitud POST con los datos del cultivo
    Then recibo una respuesta con estado 400 y un mensaje indicando el error en los datos enviados.
