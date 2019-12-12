Feature:
        Como Jugador
        Quiero poder ver el tablero de simulacion
        Para saber la posicion y orientacion del auto   

        
        Scenario:
        Given visito la pagina de simular con parametro "nombre1=Edwin"
        Then el nombre mostraria "Nombre1: Edwin" 

        Scenario:
        Given visito la pagina de simular con parametro "orientacionNueva1=Este"
        Then el nombre mostraria "orientacion1: Este"                                                                                 

        Scenario:
        Given visito la pagina de simular con parametro "posicionActualX1=0"
        Then el nombre mostraria "X1: 0"

        Scenario:
        Given visito la pagina de simular con parametro "posicionActualY1=0"
        Then el nombre mostraria "Y1: 0"
        Then el nombre mostraria "estaFuera1: true"

        And un campo "movimientos1" para agregar movimiento "A"
        Then un boton "ejecutar" para realizar los movimientos

