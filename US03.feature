Feature: Contactar a Chaquitaclla

    Scenario: Contacto exitoso
        Given que es un usuario nuevo en la plataforma y se encuentra en la landing page
        When rellena el formulario de contacto y presiona "enviar"
        Then aparece un mensaje indicando que se contactarán con él lo más pronto posible.

    Scenario: Contacto fallido
        Given que es un usuario nuevo en la plataforma y se encuentra en la landing page
        When rellena el formulario de contacto pero ocurre un error técnico al intentar enviarlo
        Then aparece un mensaje indicando que el contacto falló y sugiriendo intentar nuevamente más tarde o usar un canal alternativo de contacto.