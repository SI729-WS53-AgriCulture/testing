Feature: Ver perfil de usuario

Scenario: Usuario accede a su perfil satisfactoriamente
    Given que el usuario desea ver la información de su perfil
    When ingresa a su perfil de usuario
    Then se muestra la información relevante del usuario.

Scenario: Fallo al acceder al perfil
    Given que el usuario desea ver su información de perfil
    When intenta acceder a su perfil
    Then el sistema muestra un mensaje de error o la información no se carga, impidiendo al usuario visualizar sus datos.
