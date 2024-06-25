Feature: Eliminar registro de cultivo

Scenario: Usuario borra cultivo
    Given que el usuario desea eliminar un cultivo
    When confirma su intención de borrar los datos
    Then el sistema elimina toda la información del cultivo de la base de datos.

Scenario: Fallo al borrar cultivo
    Given que el usuario desea eliminar un registro de cultivo
    When intenta confirmar la eliminación
    Then el sistema muestra un mensaje de error y el cultivo no se elimina, dejando la base de datos sin cambios.
