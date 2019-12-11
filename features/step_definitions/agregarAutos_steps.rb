Given("visito la pagina de tamaño") do
    visit '/configuracion', :post
  end
  
  Then("escojo el campo {string} igual a {string}") do |cantidadAutos, valor|
    fill_in(cantidadAutos, :with => valor)
  end
  
  Then("presiono el boton de {string} para guardar los cambios") do |comenzar|
    click_button(comenzar)
  end
  
  Then("me redirecciona a la pagina de ajustes con el formulario") do
    visit '/ajustes', :post ,"cantidadAutos=5"
  end