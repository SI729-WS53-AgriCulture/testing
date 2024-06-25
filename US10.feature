Feature: Ver video sobre el equipo en la landing page

Scenario: Video se carga correctamente
    Given que el visitante está en la landing page
    When hace clic para ver el video sobre el equipo
    Then el video se reproduce sin problemas y el visitante puede ver el contenido completo.

Scenario: Fallo al cargar el video
    Given que el visitante está en la landing page
    When intenta ver el video sobre el equipo
    Then el video no se carga o muestra un error, impidiendo que el visitante vea el contenido.
