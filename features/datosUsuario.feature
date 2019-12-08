Feature:
        Como Jugador
        Quiero poder crear un tablero por defecto
        Para poder ver un tablero ya definido                                                                                       

        Scenario: 
        Given visto la pagina de configuraciones
        When deberia haber un campo "altura" para llenar un "dato"
        And  otro campo "ancho" para llenar otro "dato"
        Then un boton de "aceptar" para guardar los cambios

        