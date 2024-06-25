Feature: Ver beneficios de Chaquitaclla

Scenario: Visualización exitosa de los beneficios
    Given que es un visitante nuevo en la plataforma y se encuentra en la landing page
    When llega a la sección de beneficios
    Then puede informarse sobre el producto.

Scenario: Visualización fallida de los beneficios
    Given que es un usuario nuevo en la plataforma y se encuentra en la landing page
    When llega a la sección de beneficios y esta no se muestra correctamente
    Then no puede informarse adecuadamente sobre el producto.
