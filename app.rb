require 'sinatra'
require './lib/cuenta'

@@cuenta = Cuenta.new

get '/' do
  @@cuenta = Cuenta.new
  @balance = @@cuenta.balance
  erb :bienvenida
end

post '/ingresar' do
  @@cuenta.ingresar(params[:monto].to_i)
  @balance= @@cuenta.balance
  erb :bienvenida
end

post '/retirar' do
  @@cuenta.retirar(params[:retiro].to_i)
  @balance = @@cuenta.balance
  erb :bienvenida
end

