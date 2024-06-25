Feature: 
  Como developer 
  quiero relacionar la tabla de bd de sowings con products en una relacion one to many 
  para que se puedan asignar varios productos a sowing.

  Scenario: ProductSowing guarda los datos
    Dado que el endpoint “api/v1/sowings/{productId}” esta disponible
    Cuando envio una solicitud POST con datos validos
    Entonces el cultivo se registra con una respuesta de estado 201 y una confirmación de registro.

  Scenario: No se reconoce la tabla ProductSowings
    Dado que el endpoint “api/v1/sowings/{productId}” esta disponible
    Cuando envio una solicitud POST con datos invalidos o duplicados
    Entonces el sistema responde con estado 400 y un mensaje de error explicando el motivo del fallo.
