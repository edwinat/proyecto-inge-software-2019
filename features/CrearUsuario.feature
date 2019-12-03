Feature:
        Como Jugador
        Quiero poder crearme un usuario
        Para iniciar la simulacion

        Scenario:
        Given visito la pagina principal
        Then deberia haber un mensaje "bienvenido saludador"

        Scenario:
        Given visito la pagina principal
        When ingreso el "nombre" del jugador "juan"
        And presiono el boton "aceptar"
        Then deberia haber un mensaje "bienvenido jugador Juan"