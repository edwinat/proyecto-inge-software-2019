Feature:
        Como Jugador
        Quiero poder el tablero
        Para saber la posicion y orientacion del auto establecida                                                                                   

        Scenario: 
        Given visito la pagina de simulacion
        When deberia aparecer un texto con la posicionX "x: " del auto
        And deberia aparecer un texto con la posicionY "y: " del auto
        Then deberia aparecer un texto con la orientacion "orientacion: " del auto

        Scenario: 
        Given visito la pagina de simulacion
        When deberia estar la foto del auto "mario2.jpg"