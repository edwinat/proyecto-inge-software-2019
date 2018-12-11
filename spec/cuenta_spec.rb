require './lib/cuenta.rb'

describe Cuenta do
   it "deberia empezar con balance 0" do
      cuenta = Cuenta.new
      cuenta.balance.should == 0
   end

   it "deberia tomar en cuenta el ingreso" do
      cuenta = Cuenta.new
      cuenta.ingresar(30)
      cuenta.balance.should == 30
   end

   it "deberia tomar en cuenta el retiro" do
      cuenta = Cuenta.new
      cuenta.ingresar(90)
      cuenta.retirar(50)
      cuenta.balance.should == 40
   end
end
