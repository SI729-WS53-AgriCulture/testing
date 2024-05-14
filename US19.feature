Feature: Recuperación de contraseña olvidada

Scenario: Recuperación de contraseña exitosa
    Given que el usuario ha olvidado su contraseña
    When selecciona "¿Olvidaste tu contraseña?" e ingresa su correo electrónico
    Then recibe un enlace para restablecer la contraseña y accede nuevamente a su cuenta.

Scenario: Fallo en la recuperación de contraseña
    Given que el usuario ha olvidado su contraseña
    When selecciona "¿Olvidaste tu contraseña?" e ingresa su correo electrónico
    Then el sistema no envía el enlace para restablecer la contraseña, impidiendo al usuario acceder a su cuenta.
