Feature: Visualizar el cambio en el estado del producto

Scenario: Cliente mira la variación de estado
    Given que el cliente desea ver la variación del estado de un producto
    When supervisa el progreso
    Then puede ver la variación del estado en un cierto tiempo.

Scenario: Fallo al visualizar el cambio en el estado del producto
    Given que el cliente desea revisar el estado del producto
    When intenta visualizar la variación en el tiempo
    Then el sistema muestra errores en la representación gráfica o no actualiza la información, impidiendo que el usuario pueda tomar decisiones fundamentadas.
