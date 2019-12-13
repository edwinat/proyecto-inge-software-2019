Feature:
        Como Jugador
        Quiero poder definir las dimensiones del tablero
        Para poder saber su altura y ancho                                                                                      

        Scenario: 
        Given visito la vista de tamaño
        When deberia haber un campo "altura" para llenar un "5"
        And  otro campo "ancho" para llenar otro "7"
        Then un boton de "comenzar" para guardar los cambios

        Scenario:
        And dirigir a la vista simulacion
        Then mostrar la vista con "altura: 5, ancho: 7"

        