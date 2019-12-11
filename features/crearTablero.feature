Feature:
        Como Jugador
        Quiero poder crear un tablero
        Para poder ver saber los limites                                                                                       

        Scenario: 
        Given visito la vista de tamaño
        When deberia haber un campo "altura" para llenar un "5"
        And  otro campo "ancho" para llenar otro "7"
        Then un boton de "comenzar" para guardar los cambios

        Scenario:
        And dirigir a la vista simulacion
        Then mostrar la vista con "altura: 5, ancho: 7"

        