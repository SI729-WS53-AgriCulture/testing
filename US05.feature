Feature: Registrar cultivo

Scenario : Registro de cultivo satisfactoriamente
    Given que el usuario desea registrar una nueva siembra
    When ingresa los detalles del cultivo, incluyendo el tipo de cultivo, fecha, área sembrada y confirma su intención
    Then el id y fecha de creación del cultivo se almacenan en la base de datos.

Scenario : Cancelación del registro de cultivo
    Given que el usuario intenta registrar un nuevo cultivo
    When cancela la operación antes de confirmarla
    Then el sistema revierte la operación y cancela el registro.

Scenario : Sistema impide el registro de un nuevo cultivo debido a un error
    Given que el usuario intenta registrar una nueva siembra
    When el sistema encuentra un error que impide el registro
    Then el sistema cancela la operación e indica el error al usuario.
