Given("visto la pagina configuraciones") do
    visit '/configuracion', :post
end

When("deberia un campo para X {string} para llenar un {string}") do |posicionActualX, valor|
    fill_in(posicionActualX, :with => valor)
end
  
When("otro campo para Y {string} para llenar otro {string}") do |posicionActualY, valor|
    fill_in(posicionActualY, :with => valor)
end

Then("un boton de {string} para guardar el cambio") do |aceptar|
    click_button(aceptar)
end