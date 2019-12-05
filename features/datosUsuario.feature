Feature:
        Como Jugador
        Quiero poder crear un tablero por defecto
        Para poder ver un tablero ya definido                                                                                       

        Scenario: Ver el auto dibujado
        Given visito la pagina principal
        And presiono el boton "aceptar"
        Then deberia haber una "mario2.jpg" por defecto


        Scenario: Ver el auto en la posicion por defecto
        Given visito la pagina principal
        And presiono el boton "aceptar"
        Then quiero ver el auto por defecto en la posicion "0,0"

        Scenario:Ver la orientacion del Auto por defecto
        Given visito la pagina principal
        And presiono el boton "aceptar"
        Then quiero ver la orientacion por defecto al "Este"
        