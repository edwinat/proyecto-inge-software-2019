
  Given("visito la vista de tamaño") do
    visit '/configuracion', :post
  end

  When("deberia haber un campo {string} para llenar un {string}") do |altura, valor|
    fill_in(altura, :with => valor)
  end

  When("otro campo {string} para llenar otro {string}") do |ancho, valor|
    fill_in(ancho, :with => valor)
  end

  Then("un boton de {string} para guardar los cambios") do |aceptar|
    click_button(aceptar)
  end


  Then("dirigir a la vista simulacion") do
    visit '/simulacion', :post
  end
  
  Then("mostrar la vista con {string}") do |dimenciones|
    last_response.body.should =~ /#{dimenciones}/m  
  end