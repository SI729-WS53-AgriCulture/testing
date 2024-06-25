Feature: Barra de navegación

Scenario: Navegación correcta
    Given que es un visitante de la landing page
    When presiona un botón en la barra de navegación
    Then es redirigido a la sección correspondiente.

Scenario: Navegación incorrecta
    Given que es un visitante de la landing page
    When presiona un botón en la barra de navegación
    Then no es redirigido a la sección correspondiente, y ve un mensaje de error o experimenta un comportamiento inesperado, como enlaces rotos o redireccionamientos erróneos.