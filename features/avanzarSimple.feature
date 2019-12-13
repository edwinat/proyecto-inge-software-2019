Feature:
        Como jugador 
        Quiero poder ejecutar la simulacion simple (un solo movimiento) 
        para ver el cambio de posicion y orientacion inicial del auto

Scenario: Avanzar 1 auto dentro el tablero x=0 y=0 Este
    Given visito la pagina de simular con parametro "nombre1=Juann"
    Then agrego los parametros "posicionActualX1" igual a "0"
    And agrego los parametros "posicionActualY1" igual a "0"
    Then agrego los parametros "orientacionNueva1" igual a "Este"
    And agrego los parametros "movimientos1" igual a "A"
    Then un boton "ejecutar" para realizar los movimientos
    Then el texto mostraria "X1: 1"
    And el texto mostraria "Y1: 0"
    Then el texto mostraria "orientacion1: Este" 
    And el texto mostraria "estaFuera1: true"

Scenario: Girar Izquierda 1 auto dentro el tablero x=0 y=0 Este
    Given visito la pagina de simular con parametro "nombre1=Juann"
    Then agrego los parametros "posicionActualX1" igual a "0"
    And agrego los parametros "posicionActualY1" igual a "0"
    Then agrego los parametros "orientacionNueva1" igual a "Este"
    And agrego los parametros "movimientos1" igual a "I"
    Then un boton "ejecutar" para realizar los movimientos 
    Then el texto mostraria "X1: 0"
    And el texto mostraria "Y1: 0"
    Then el texto mostraria "orientacion1: Norte" 
    And el texto mostraria "estaFuera1: true"

Scenario: Girar derecha 1 auto dentro el tablero x=0 y=0 Este
    Given visito la pagina de simular con parametro "nombre1=Juann"
    Then agrego los parametros "posicionActualX1" igual a "0"
    And agrego los parametros "posicionActualY1" igual a "0"
    Then agrego los parametros "orientacionNueva1" igual a "Este"
    And agrego los parametros "movimientos1" igual a "D"
    Then un boton "ejecutar" para realizar los movimientos 
    Then el texto mostraria "X1: 0"
    And el texto mostraria "Y1: 0"
    Then el texto mostraria "orientacion1: Sur" 
    And el texto mostraria "estaFuera1: true"

Scenario: Avanzar 1 auto FUERA del tablero x=0 y=0 Sur
    Given visito la pagina de simular con parametro "nombre1=Juann"
    Then agrego los parametros "posicionActualX1" igual a "0"
    And agrego los parametros "posicionActualY1" igual a "0"
    Then agrego los parametros "orientacionNueva1" igual a "Sur"
    And agrego los parametros "movimientos1" igual a "A"
    Then un boton "ejecutar" para realizar los movimientos
    Then el texto mostraria "X1: 0"
    And el texto mostraria "Y1: -1"
    Then el texto mostraria "orientacion1: Sur" 
    And el texto mostraria "estaFuera1: false"



