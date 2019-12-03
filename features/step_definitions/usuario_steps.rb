Given("visito la pagina principal") do
    visit '/'
end
  
  Then("deberia haber un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end

  When("ingreso el {string} del jugador {string}") do |nombre, name|
    fill_in(nombre, :with => name)
  end
  
  When("presiono el boton {string}") do |aceptar|
    click_button(aceptar)
  end