Given(/^visito la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^ingreso un monto de (\d+)$/) do |valor|
  fill_in('monto', :with => valor)
  click_button("ingresar")
end

When(/^retiro un monto de (\d+)$/) do |valor|
  fill_in('retiro', :with => valor)
  click_button("retirar_btn") 
end


