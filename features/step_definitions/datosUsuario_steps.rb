
  # Given("visito la pagina principal") do
#     visit '/'
# end

# When("presiono el boton {string}") do |aceptar|
#     click_button(aceptar)
#   end

  Then("deberia haber una {string} por defecto") do |image|
    last_response.should have_xpath("//img[@src=\"#{image}\"]")
  end

  Then("quiero ver el auto por defecto en la posicion {string}") do |posicion|
    last_response.body.should =~ /#{posicion}/m
  end

  Then("quiero ver la orientacion por defecto al {string}") do |orientacion|
    last_response.body.should =~ /#{orientacion}/m
  end