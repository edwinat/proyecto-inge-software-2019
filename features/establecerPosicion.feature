Feature:
        Como Jugador
        Quiero poder establecer la posicion de un auto
        Para empezar desde una posicion particular                                                                                     

        Scenario: 
        Given visito la pagina de ajustes
        When deberia existir un campo para "posicionActualX1" para llenar con "0"
        And  otro campo para "posicionActualY1" para llenar con "0"
        And un campo para la "orientacionActual1" con "Este"
        Then un boton de "aceptar" para guardar el cambio

        Scenario: 
        Given despues de guardar, se visita la pagina de simular
        Then se tiene una tabla con id "x1": "0"
        And se tiene una tabla con id "y1": "0"
        Then se tiene una tabla con id "orientacion1": "E"
        