Given("visito la pagina de simulacion") do
  visit '/simulacion', :post
  end
  
  When("deberia aparecer un texto con la posicionX {string} del auto") do |posicionX|
    last_response.body.should =~ /#{posicionX}/m
  end
  
  When("deberia aparecer un texto con la posicionY {string} del auto") do |posicionY|
    last_response.body.should =~ /#{posicionY}/m
  end
  
  Then("deberia aparecer un texto con la orientacion {string} del auto") do |orientacion|
    last_response.body.should =~ /#{orientacion}/m
  end

  When("deberia estar la foto del auto {string}") do |imagen|
    last_response.should have_xpath("//img[@src=\"#{imagen}\"]")
  end