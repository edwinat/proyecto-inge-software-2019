Then("agrego los parametros {string} igual a {string}") do |campo, valor|
    fill_in(campo, :with => valor)
end

Then("el texto mostraria {string}") do |texto|
    last_response.body.should =~ /#{texto}/m
end