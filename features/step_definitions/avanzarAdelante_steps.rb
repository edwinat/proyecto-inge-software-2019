Given("visito la pagina donde esta la simulacion con x={int}, y={int}, orientacion=Este") do |x, y|
    visit ('/simulacion'), :post
  end
  
  When("deberia haber el boton de ir {string}") do |adelante|
    click_button(adelante)
  end

  When("al presionar el boton deberia actualizar los datos x={int} y={int}") do |x, y|
    visit ('/avanzar'), :post, "posicionActualX=#{x} posicionActualY=#{y} "
  end

  Then("la posicion x deberia ser: {string}") do |dato|

    last_response.should have_xpath( "//td[@id=\"x\"]") do 
      last_response.body.should =~ /#{dato}/m
    end
  end
  
  Then("la posicion y deberia ser: {string}") do |dato|

    last_response.should have_xpath( "//td[@id=\"y\"]") 
  end
  
  Then("la orientacion deberia mantenerse en: {string}") do |string|
    last_response.should have_xpath( "//td[@id=\"orientacion\"]") 
  end