
  Then("deberia haber una {string} por defecto") do |image|
    last_response.should have_xpath("//img[@src=\"#{image}\"]")
  end