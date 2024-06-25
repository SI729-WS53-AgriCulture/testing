Feature: Ver equipo de Chaquitaclla

Scenario: Información del equipo visible
    Given que es un visitante nuevo en la plataforma y se encuentra en la landing page
    When llega a la sección de "About the Team" podrá ver la información de los integrantes del equipo de desarrollo de Chaquitaclla
    Then puede averiguar si tienen experiencia en el desarrollo de productos de agricultura.

Scenario: Información del equipo no disponible
    Given que es un visitante nuevo en la plataforma y se encuentra en la landing page
    When llega a la sección de "About the Team", se encontrará que la sección no existe o está corrupta
    Then pensará que el producto es de mala calidad y que no inspira confianza puesto que no tiene información sobre el equipo de desarrollo.
