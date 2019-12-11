Given("visito la pagina de simular") do
    visit '/simulacion', :post ,"nombre1=auto 1"
end
  
Given("deberia aparecer una celda con el id de {string} con el texto {string}") do |id, nombre|
    last_response.should have_xpath("//td[@id=\"#{id}\"]") do |html|
        html.should contain( nombre )
    end
end

Then("deberia aparecer una celda con el id de {string} con la posicion {string}") do |id, valor|
    last_response.should have_xpath("//td[@id=\"#{id}\"]") do
        last_response.body.should =~ /#{valor}/m
    end
end
  
Then("un campo {string} para agregar movimiento {string}") do |movimientos1, datos|
    fill_in(movimientos1,:with =>datos)
end
  
Then("un boton {string} para realizar los movimientos") do |ejecutar|
    click_button(ejecutar)
end