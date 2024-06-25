Feature: Comunidad y foros

Scenario: El usuario quiere recibir consejos
    Given que el usuario quiere más información
    When ingresa al foro
    Then recopila información útil para su huerto.

Scenario: Fallo en la comunidad y foros
    Given que el usuario desea obtener información de otros usuarios
    When intenta ingresar al foro
    Then el foro no carga o no puede acceder a las publicaciones, impidiendo la interacción con la comunidad y el intercambio de experiencias.
