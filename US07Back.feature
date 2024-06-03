Feature: Visualización de registros de cultivos en la API RESTful

  Como desarrollador,
  Quiero implementar el RESTful API que permitirá la visualización de registros
  Para visualizar la información de los cultivos almacenada en la base de datos y permitir que el front pueda consumirlo.

  Scenario: Visualización de registros exitosa
    Given que el endpoint "/api/v1/sowings" está disponible
    When envío una solicitud GET para obtener los registros de cultivos
    Then recibo una respuesta con estado 200 y la información de los cultivos almacenados en la base de datos.

  Scenario: No hay registros de cultivos
    Given que el endpoint "/api/v1/sowings" está disponible
    And no hay cultivos registrados en la base de datos
    When envío una solicitud GET para obtener los registros de cultivos
    Then recibo una respuesta con estado 200 pero con un cuerpo de respuesta vacío.
