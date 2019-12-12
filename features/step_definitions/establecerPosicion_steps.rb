
Given("visito la pagina de ajustes con parametro {string}") do |parametro|
    visit '/ajustes', :post,"#{parametro}"
end
  
When("deberia existir un campo para {string} para llenar con {string}") do |posicionActualX1, valor|
    fill_in(posicionActualX1, :with => valor)
end
  
Then("un boton de {string} para guardar el cambio") do |aceptar|
    click_button(aceptar)
end
