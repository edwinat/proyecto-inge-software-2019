
Given("visito la pagina de simular con parametro {string}") do |parametro|
    visit '/simulacion', :post, "#{parametro}"
end

Then("el nombre mostraria {string}") do |nombre_auto|
    last_response.body.should =~ /#{nombre_auto}/m
end
  
Then("un campo {string} para agregar movimiento {string}") do |movimientos1, datos|
    fill_in(movimientos1,:with =>datos)
end
  
Then("un boton {string} para realizar los movimientos") do |ejecutar|
    click_button(ejecutar)
end
