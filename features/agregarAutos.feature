Feature:
        Como Jugador
        Quiero poder definir la cantidad de autos 
        Para tener varios autos simulando al mismo tiempo

        Scenario: agregar 1 auto
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "1"
        And presiono el boton de "comenzar" para guardar los cambios
        Then muestre "cantidad jugadores: 1"

        Scenario: agregar 2 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "2"
        And presiono el boton de "comenzar" para guardar los cambios
        Then muestre "cantidad jugadores: 2"

        Scenario: agregar 3 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "3"
        And presiono el boton de "comenzar" para guardar los cambios
        Then muestre "cantidad jugadores: 3"

        Scenario: agregar 4 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "4"
        Then presiono el boton de "comenzar" para guardar los cambios
        Then muestre "cantidad jugadores: 4"

        Scenario: agregar 5 autos
        Given visito la pagina de tamaño
        Then escojo el campo "cantidadAutos" igual a "5"
        Then presiono el boton de "comenzar" para guardar los cambios
        Then muestre "cantidad jugadores: 5"
         