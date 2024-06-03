Feature: Edición de registros de cultivos en la API RESTful

  Como desarrollador de la aplicación Chaquitaclla,
  Quiero implementar la funcionalidad en la API RESTful
  Para permitir a los usuarios editar los registros de cultivos existentes y mantener la información actualizada en la base de datos.

  Scenario: Actualización de cultivo exitosa
    Given que el endpoint "/api/v1/sowings/{id}" está disponible
    And el usuario proporciona datos válidos para actualizar el cultivo
    When envío una solicitud PUT con el ID del cultivo y los nuevos datos del cultivo
    Then recibo una respuesta con estado 200 y la información actualizada del cultivo.

  Scenario: Error en la solicitud
    Given que el endpoint "/api/v1/sowings/{id}" está disponible
    And los datos proporcionados para la actualización están incompletos o en un formato incorrecto
    When envío una solicitud PUT con el ID del cultivo y los nuevos datos del cultivo
    Then recibo una respuesta con estado 400 y un mensaje indicando el error en la solicitud.
