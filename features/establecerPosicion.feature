Feature:
        Como Jugador
        Quiero poder establecer la posicion del auto
        Para empezar desde una posicion particular                                                                                     

        Scenario: 
        Given visto la pagina configuraciones
        When deberia un campo para X "posicionActualX" para llenar un "dato"
        And  otro campo para Y "posicionActualY" para llenar otro "dato"
        Then un boton de "aceptar" para guardar el cambio

        