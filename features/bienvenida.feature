Feature: Bienvenida
	Como usuario de banco
	Quiero gestionar mi cuenta
	Para mantenerla actualizada

	Scenario: Cuenta inicial
		Given visito la pagina principal
		Then deberia ver "Bienvenido a cuentas"
		And deberia ver "Balance actual: 0"
