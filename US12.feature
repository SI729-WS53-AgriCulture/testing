Feature: Editar perfil de usuario

Scenario: Usuario edita su perfil satisfactoriamente
    Given que el usuario desea actualizar su información personal
    When realiza los cambios y confirma su intención
    Then la información se guarda correctamente en la base de datos y se refleja en el perfil.

Scenario: Fallo al editar el perfil
    Given que el usuario desea actualizar su información personal
    When intenta realizar cambios y confirmar la edición
    Then el sistema muestra un mensaje de error o no guarda las modificaciones, dejando el perfil sin cambios.
