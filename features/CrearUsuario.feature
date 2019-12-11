Feature:
        Como Jugador
        Quiero poder poner mi nombre de perfil
        Para iniciar la simulacion con mi nombre

        Scenario:
        Given visito la pagina principal
        Then deberia haber un mensaje "bienvenido saludador"

        Scenario:
        Given visito la pagina principal
        When ingreso el "nombre" del jugador "juan"
        And presiono el boton "aceptar"
        Then deberia haber un mensaje de "bienvenido jugador juan"