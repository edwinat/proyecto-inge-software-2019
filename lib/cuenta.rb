class Cuenta

   def initialize
      @saldo = 0
   end

   def balance 
      @saldo
   end

   def ingresar(monto)
      @saldo += monto
   end

   def retirar(monto)
      @saldo -= monto
   end
end
