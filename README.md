```Gherkin
Feature: Registro de usurio

  # The first example has two steps
  Scenario: Registro exitoso
    Given que es un nuevo visitante de la plataforma
    When completa el formulario de registro con sus datos personales y selecciona un nombre de usuario y contraseña
    Then recibe una confirmación de registro y puede acceder a las funciones exclusivas de la plataforma.
  # The second example has three steps
  Scenario: Registro fallido
    Given que es un nuevo visitante de la plataforma
    When intenta registrarse con un nombre de usuario ya existente o datos incompletos
    Then recibe un mensaje de error indicando el problema y no se permite el registro hasta que se resuelva el error.
```
