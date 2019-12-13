Feature: 
   Como jugador 
   Quiero poder ingresar varios movimientos de "A","D"y "I" en un  solo campo 
   para que el auto se mueva acorde a lo mandado


Scenario: Avanzar 2 auto dentro el tablero IAIAIAIAA
    Given visito la pagina de simular con parametro "nombre1=Pedro"
    Then agrego los parametros "posicionActualX2" igual a "1"
    And agrego los parametros "posicionActualY2" igual a "2"
    Then agrego los parametros "orientacionNueva2" igual a "Norte"
    And agrego los parametros "movimientos2" igual a "IAIAIAIAA"
    Then un boton "ejecutar" para realizar los movimientos  
    Then el texto mostraria "X2: 1"
    And el texto mostraria "Y2: 3"
    Then el texto mostraria "orientacion2: Norte" 
    And el texto mostraria "estaFuera2: true"

Scenario: Avanzar 2 auto dentro el tablero DADADADAA
    Given visito la pagina de simular con parametro "nombre1=Pedro"
    Then agrego los parametros "posicionActualX2" igual a "1"
    And agrego los parametros "posicionActualY2" igual a "2"
    Then agrego los parametros "orientacionNueva2" igual a "Norte"
    And agrego los parametros "movimientos2" igual a "DADADADAA"
    Then un boton "ejecutar" para realizar los movimientos   
    Then el texto mostraria "X2: 1"
    And el texto mostraria "Y2: 3"
    Then el texto mostraria "orientacion2: Norte" 
    And el texto mostraria "estaFuera2: true"

Scenario: Avanzar 2 auto dentro el tablero DIA
    Given visito la pagina de simular con parametro "nombre1=Pedro"
    Then agrego los parametros "posicionActualX2" igual a "1"
    And agrego los parametros "posicionActualY2" igual a "2"
    Then agrego los parametros "orientacionNueva2" igual a "Norte"
    And agrego los parametros "movimientos2" igual a "DIADIADIA"
    Then un boton "ejecutar" para realizar los movimientos   
    Then el texto mostraria "X2: 1"
    And el texto mostraria "Y2: 5"
    Then el texto mostraria "orientacion2: Norte" 
    And el texto mostraria "estaFuera2: true"