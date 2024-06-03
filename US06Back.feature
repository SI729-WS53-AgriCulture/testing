Feature: Eliminación de cultivo mediante la API RESTful

  Como desarrollador de la aplicación Chaquitaclla,
  Quiero eliminar un cultivo mediante la API RESTful
  Para mantener la base de datos limpia y actualizada.

  Scenario: Eliminación de cultivo exitosa
    Given que el endpoint "/api/v1/sowings/{id}" está disponible
    And el ID del cultivo existe en la base de datos
    When envío una solicitud DELETE con el ID del cultivo
    Then recibo una respuesta con estado 200 y un mensaje indicando que el cultivo ha sido eliminado exitosamente.

  Scenario: Cultivo no encontrado
    Given que el endpoint "/api/v1/sowings/{id}" está disponible
    And el ID del cultivo no existe en la base de datos
    When envío una solicitud DELETE con el ID del cultivo
    Then recibo una respuesta con estado 404 y un mensaje indicando que no se encontró el cultivo.
