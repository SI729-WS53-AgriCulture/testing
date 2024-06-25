Feature: Registro de cultivos en la API RESTful de Chaquitaclla

  Como desarrollador de la aplicación Chaquitaclla,
  Quiero desarrollar la funcionalidad en la API RESTful
  Para permitir a los usuarios registrar sus cultivos con datos como el área del terreno y el cultivo asignado.

  Scenario: Registro de cultivo exitoso
    Given que el endpoint "/api/v1/sowings" está disponible
    And el usuario proporciona el área del terreno y el ID del cultivo
    When envío una solicitud POST con los datos del cultivo a registrar
    Then recibo una respuesta con estado 201 y un mensaje indicando que el cultivo ha sido registrado exitosamente.

  Scenario: Sowing no encontrado
    Given que el endpoint "/api/v1/sowings" está disponible
    And el ID del cultivo proporcionado no existe en la base de datos
    When envío una solicitud POST con los datos del cultivo a registrar
    Then recibo una respuesta con estado 404 y un mensaje indicando que no se encontró el cultivo asignado a aquel sowing.
