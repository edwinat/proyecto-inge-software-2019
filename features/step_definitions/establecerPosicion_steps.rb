Given("visito la pagina de ajustes") do
    visit '/ajustes', :post ,"cantidadAutos=1"
end
  
When("deberia existir un campo para {string} para llenar con {string}") do |posicionActualX1, valor|
    fill_in(posicionActualX1, :with => valor)
end
  
When("otro campo para {string} para llenar con {string}") do |posicionActualY1, valor|
    fill_in(posicionActualY1, :with => valor)
end
  
When("un campo para la {string} con {string}") do |orientacionActual1, valor|
    fill_in(orientacionActual1, :with => valor)
end
  
Then("un boton de {string} para guardar el cambio") do |aceptar|
    click_button(aceptar)
end


Given("despues de guardar, se visita la pagina de simular") do
    visit '/simulacion', :post ,"cantidadAutos=1"    
end

Then("se tiene una tabla con id {string}: {string}") do |id, valor|
    last_response.should have_xpath( "//td[@id=\"#{id}\"]") do
        last_response.body.should =~ /#{valor}/m
    end   
end
  
