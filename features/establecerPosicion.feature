Feature:
        Como Jugador
        Quiero poder establecer los parametros iniciales
        Para saber el punto inicial(x,y), orientacion y nombre                                                                                     

        Scenario: con 1 auto
        Given visito la pagina de ajustes con parametro "cantidadAutos=1"
        When deberia existir un campo para "posicionActualX1" para llenar con "0"
        Then deberia existir un campo para "posicionActualY1" para llenar con "0"
        And deberia existir un campo para "orientacionNueva1" para llenar con "Este"
        Then deberia existir un campo para "nombre1" para llenar con "auto 1"
        Then un boton de "aceptar" para guardar el cambio


        Scenario: con 2 auto
        Given visito la pagina de ajustes con parametro "cantidadAutos=2"
        When deberia existir un campo para "posicionActualX2" para llenar con "0"
        Then deberia existir un campo para "posicionActualY2" para llenar con "0"
        And deberia existir un campo para "orientacionNueva2" para llenar con "Este"
        Then deberia existir un campo para "nombre2" para llenar con "auto 1"
        Then un boton de "aceptar" para guardar el cambio
        