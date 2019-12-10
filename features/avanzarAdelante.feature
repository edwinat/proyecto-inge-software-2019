Feature:
        Como Jugador
        Quiero poder mover adelante el auto
        Para avanzar un paso

    Scenario: Avanzar auto 
    Given visito la pagina donde esta la simulacion con x=0, y=0, orientacion=Este
    When deberia haber el boton de ir "adelante"
    And al presionar el boton deberia actualizar los datos x=0 y=0
    Then la posicion x deberia ser: "1"
    And la posicion y deberia ser: "0"
    Then la orientacion deberia mantenerse en: "Este"