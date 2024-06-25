Feature: Navegación por la landing page

Scenario: Navegación por secciones principales
    Given que el visitante ingresa a la landing page de Chaquitaclla
    When recorre la página
    Then puede ver y acceder a todas las secciones principales, como características del producto, precios y testimonios.

Scenario: Problemas de navegación en dispositivos móviles
    Given que el visitante accede a la landing page de Chaquitaclla desde un dispositivo móvil
    When intenta abrir el menú de navegación
    Then el menú no se despliega correctamente, causando dificultad para acceder a las diferentes secciones, o la página no se ajusta bien a la pantalla del móvil, creando problemas de visibilidad y usabilidad.
