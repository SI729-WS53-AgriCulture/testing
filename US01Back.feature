Feature: Registro de datos de usuario en la API RESTful

  Como desarrollador,
  Quiero usar el RESTful API que permitirá el registro de los datos del usuario
  Para ser reconocido como usuario oficial de la plataforma y guardarlos en la base de datos.

  Scenario: Registro exitoso
    Given que el endpoint "/api/v1/users" está disponible
    And tengo todos los datos necesarios del usuario en el formato correcto
    When envío una solicitud POST con los datos del usuario
    Then recibo una respuesta con estado 201 y la información del usuario registrado.

  Scenario: Datos incompletos o incorrectos
    Given que el endpoint "/api/v1/users" está disponible
    And los datos del usuario están incompletos o en un formato incorrecto
    When envío una solicitud POST con los datos del usuario
    Then recibo una respuesta con estado 400 y un mensaje indicando el error en los datos enviados.
