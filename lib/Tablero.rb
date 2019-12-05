require 'Auto'
class Tablero
    def initialize
        @base=8
        @altura=6
        @auto=Auto.new
    end
    def obtenerBase()
        return @base
    end
    def obtenerAltura()
        return @altura
    end
    def establecerAuto(nuevoAuto)
        @auto=nuevoAuto
    end
    def establecerTablero(base,altura)
        @base=base
        @altura=altura
    end
    def obtenerAuto()
        @auto
    end
    def verificarBordes(auto)
        if(auto.obtenerY()<0 || auto.obtenerY()>@altura || auto.obtenerX()<0 || auto.obtenerX()>@base)
            return false
        end
        
        return true
    end
end