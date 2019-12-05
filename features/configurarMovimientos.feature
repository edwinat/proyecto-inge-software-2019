Feature:
        Como Jugador
        Quiero poder configurar los movimientos del auto
        Para avanzar, girar izquierda y girar derecha

    Scenario: Avanzar auto 
    Given visito la pagina principal
    And presiono el boton "aceptar"
    Then deberia haber el boton de ir "adelante"

    Scenario: girar auto izquierda 
    Given visito la pagina principal
    And presiono el boton "aceptar"
    Then deberia haber el boton de doblar "arriba"

    Scenario: Agirar auto derecha 
    Given visito la pagina principal
    And presiono el boton "aceptar"
    Then deberia haber el boton de girar "abajo"