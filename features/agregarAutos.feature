Feature:
        Como Jugador
        Quiero poder agregar mas de un auto 
        Para tener varios autos simulando al mismo tiempo

        Scenario: agregar 1 auto
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "1"
        Then presiono el boton de "comenzar" para guardar los cambios
        
        Then me redirecciona a la pagina de ajustes con el formulario
        And deberia existir un campo para "nombre1" para llenar con "auto 1"
        Then deberia existir un campo para "posicionActualX1" para llenar con "0"
        And otro campo para "posicionActualY1" para llenar con "0"
        Then un campo para la "orientacionActual1" con "Este"                                                                                 


        Scenario: agregar 2 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "2"
        Then presiono el boton de "comenzar" para guardar los cambios
        
        Then me redirecciona a la pagina de ajustes con el formulario
        And deberia existir un campo para "nombre2" para llenar con "auto 2"
        Then deberia existir un campo para "posicionActualX2" para llenar con "0"
        And  otro campo para "posicionActualY2" para llenar con "1"
        Then un campo para la "orientacionActual2" con "Oeste" 


        Scenario: agregar 3 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "3"
        Then presiono el boton de "comenzar" para guardar los cambios
         
        Then me redirecciona a la pagina de ajustes con el formulario
        And deberia existir un campo para "nombre3" para llenar con "auto 3"
        Then deberia existir un campo para "posicionActualX3" para llenar con "0"
        And  otro campo para "posicionActualY3" para llenar con "2"
        Then un campo para la "orientacionActual3" con "Sur" 

        Scenario: agregar 4 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "4"
        Then presiono el boton de "comenzar" para guardar los cambios
         
        Then me redirecciona a la pagina de ajustes con el formulario
        And deberia existir un campo para "nombre4" para llenar con "auto 4"
        Then deberia existir un campo para "posicionActualX3" para llenar con "0"
        And  otro campo para "posicionActualY3" para llenar con "3"
        Then un campo para la "orientacionActual3" con "Norte" 