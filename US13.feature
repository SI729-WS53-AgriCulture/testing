Feature: Buscar los servicios que deseo utilizar

Scenario: Cliente busca el servicio de gestión
    Given que el usuario desea utilizar el servicio de gestión
    When lo encuentra dentro de los servicios
    Then lo selecciona y accede a la gestión de su huerto o la sección correspondiente.

Scenario: Fallo al buscar servicios
    Given que el cliente desea buscar un servicio en el cuadro de búsqueda
    When ingresa el nombre del servicio y presiona "buscar"
    Then el sistema muestra resultados incorrectos o no encuentra el servicio, dificultando que el usuario acceda a las funciones deseadas.
