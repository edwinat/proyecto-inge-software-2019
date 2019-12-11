Feature:
        Como Jugador
        Quiero poder ver el tablero de simulacion
        Para saber la posicion y orientacion del auto                                                                                    

        Scenario: para 1 auto
        Given visito la pagina de simular
        And deberia aparecer una celda con el id de "nombre1" con el texto "auto 1"
        Then deberia aparecer una celda con el id de "x1" con la posicion "0"
        And deberia aparecer una celda con el id de "y1" con la posicion "0"
        Then deberia aparecer una celda con el id de "orientacion1" con la posicion "E"
        And un campo "movimientos1" para agregar movimiento "A"
        Then un boton "ejecutar" para realizar los movimientos
