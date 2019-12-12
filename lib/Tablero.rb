require './lib/Auto'
class Tablero
    def initialize
        @ancho=8
        @altura=6
        
    end

    def obtenerAncho()
        return @ancho
    end
    
    def obtenerAltura()
        return @altura
    end
    
    def establecerTablero(ancho,altura)
        @ancho=ancho
        @altura=altura
    end

    def verificarBordes(auto)
        if(auto.obtenerY()<0 || auto.obtenerY()>@altura || auto.obtenerX()<0 || auto.obtenerX()>@ancho)
            return false
        end
        return true
    end
end