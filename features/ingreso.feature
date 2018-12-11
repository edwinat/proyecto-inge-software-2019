Feature: ingreso de montos
   Como usuario de banco
   Quiero poder ingresar movimientos a mi cuenta
   Para mantenerla actualizada

   Scenario: ingreso de monto
	Given visito la pagina principal
	When ingreso un monto de 100
	Then deberia ver "Balance actual: 100"	
	
   Scenario: ingreso y retiro
	Given visito la pagina principal
	And ingreso un monto de 300
	When retiro un monto de 100
	Then deberia ver "Balance actual: 200"
