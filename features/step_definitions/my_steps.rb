Given(/^visito la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

