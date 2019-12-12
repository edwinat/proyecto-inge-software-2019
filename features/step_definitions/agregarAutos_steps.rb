Given("visito la pagina de tamaño") do
    visit '/configuracion', :post
  end
  
  Then("escojo el campo {string} igual a {string}") do |cantidadAutos, valor|
    fill_in(cantidadAutos, :with => valor)
  end
  
  Then("presiono el boton de {string} para guardar los cambios") do |comenzar|
    click_button(comenzar)
  end
  
  Then("muestre {string}") do |valor|
    last_response.body.should =~ /#{valor}/m
  end