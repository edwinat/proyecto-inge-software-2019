Feature:
        Como Jugador
        Quiero poder crear un tablero por defecto
        Para poder ver un tablero ya definido                                                                                       

                Scenario:
        Given visito la pagina principal
        And presiono el boton "aceptar"
        Then deberia haber una "mario2.jpg" por defecto

        # Scenario:
        # Given visito la pagina principal
        # When ingreso el "nombre" del jugador "juan"
        # And presiono el boton "aceptar"
        # Then deberia haber un mensaje bienvenido jugador "juan"