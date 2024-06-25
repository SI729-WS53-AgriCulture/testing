Feature: Auditable
Como developer
quiero incluir Auditable en cada entity y aggregate
para que el proyecto pueda ser auditado.

Scenario: Auditable exitoso
Dado que auditable se encuentra en todos los entities y aggregates
Cuando realizo cualquier solicitud
Entonces la solicitud procesa correctamente y los metadatos se almacenan en Auditable para una próxima auditoría.

Scenario: Auditable falla
Dado que auditable se encuentra en todos los entities y aggregates
Cuando realizo cualquier solicitud
Entonces la soliticud no se procesa correctamente y no se guarda ningun metadato.

