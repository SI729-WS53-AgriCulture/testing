Feature: Category
  Como developer
  quiero incluir una seccion de categoria a forum
  para que se puedan buscar preguntas por tema de consulta.

Scenario: Categoría registrada exitosamente
Dado que el endpoint “/api/v1/categories” está disponible.
Cuando envío una solicitud de POST con datos validos.
Entonces recibo una respuesta con estado 200.

Scenario: Registrada fallida

Dado que el endpoint “/api/v1/categories” está disponible.
Cuando envío una solicitud de POST con datos inválidos.
Entonces recibo una respuesta con estado 400 y mensaje de error.
