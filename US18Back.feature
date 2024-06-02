Feature: Funcionalidad de gestión de preguntas y respuestas en la Restful API de Chaquitaclla

  Como desarrollador de la aplicación Chaquitaclla,
  Quiero implementar la funcionalidad en la Restful API que permita el ingreso de preguntas y respuestas
  Para que el front pueda manejar el apartado de foro adecuadamente

  Scenario: Crear pregunta exitosamente
    Given que el endpoint "/api/v1/forum/questions" está disponible
    And el usuario proporciona los datos necesarios para crear una pregunta
    When envío una solicitud POST con los datos de la pregunta
    Then recibo una respuesta con estado 201 y la información de la pregunta creada.

  Scenario: Crear respuesta exitosamente
    Given que el endpoint "/api/v1/forum/questions/{question_id}/answers" está disponible
    And el usuario proporciona los datos necesarios para crear una respuesta a una pregunta específica
    When envío una solicitud POST con los datos de la respuesta
    Then recibo una respuesta con estado 201 y la información de la respuesta creada.

  Scenario: Obtener preguntas exitosamente
    Given que el endpoint "/api/v1/forum/questions" está disponible
    When envío una solicitud GET para obtener todas las preguntas en el foro
    Then recibo una respuesta con estado 200 y la lista de todas las preguntas en el foro.

  Scenario: Obtener respuestas exitosamente
    Given que el endpoint "/api/v1/forum/questions/{question_id}/answers" está disponible
    When envío una solicitud GET para obtener todas las respuestas de una pregunta específica
    Then recibo una respuesta con estado 200 y la lista de todas las respuestas de esa pregunta.

  Scenario: Eliminar pregunta exitosamente
    Given que el endpoint "/api/v1/forum/questions/{question_id}" está disponible
    And el usuario es el autor de la pregunta o tiene los permisos necesarios para eliminarla
    When envío una solicitud DELETE para eliminar una pregunta
    Then recibo una respuesta con estado 200 y un mensaje indicando que la pregunta ha sido eliminada correctamente.

  Scenario: Eliminar respuesta exitosamente
    Given que el endpoint "/api/v1/forum/questions/{question_id}/answers/{answer_id}" está disponible
    And el usuario es el autor de la respuesta o tiene los permisos necesarios para eliminarla
    When envío una solicitud DELETE para eliminar una respuesta
    Then recibo una respuesta con estado 200 y un mensaje indicando que la respuesta ha sido eliminada correctamente.
