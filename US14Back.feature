Feature: Visualización del cambio en el estado de los productos en el huerto mediante la API RESTful

  Como desarrollador,
  Quiero habilitar el uso de la RESTful API
  Para proporcionar a los usuarios una visualización del cambio en el estado de sus productos en el huerto, utilizando los datos recopilados durante su cuidado.

  Scenario: Visualización de datos exitosa
    Given que el endpoint "/api/v1/sowings/{id}/status" está disponible
    And el ID del cultivo existe en la base de datos
    When envío una solicitud GET con el ID del cultivo
    Then recibo una respuesta con estado 200 y los datos históricos del estado del cultivo.

  Scenario: Cultivo no encontrado
    Given que el endpoint "/api/v1/sowings/{id}/status" está disponible
    And el ID del cultivo no existe en la base de datos
    When envío una solicitud GET con el ID del cultivo
    Then recibo una respuesta con estado 404 y un mensaje indicando que no se encontró el cultivo.
