Feature: 
  Como developer 
  quiero implementar una seccion de perfiles 
  para que mi usuario pueda editar su informacion.

Scenario: Profiles implementado exitosamente
  Dado que los endpoints de POST, DELETE, UPDATE Y GET, siendo “/api/v1/profiles/{id}” esta disponible
  Cuando envio una solicitud con datos validos
  Entonces el perfil se registra con una respuesta 201 y una confirmacion de registro.

Scenario: Profiles falla
  Dado que los endpoints de POST, DELETE, UPDATE Y GET, siendo “/api/v1/profiles/{id}” esta disponible
  Cuando envio una solicitud con datos invalidos
  Entonces el sistema responde con estado 400 y un mensaje de error explicando el motivo del fallo.
