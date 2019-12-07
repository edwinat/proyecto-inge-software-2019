require './lib/Auto'
class Tablero
    def initialize
        @ancho=8
        @altura=6
        # @autos=Array.new
        
        
    end
    # def agregarNuevoAuto(nuevo)
    #     @autos.push(nuevo)
    # end
    def obtenerAncho()
        return @ancho
    end
    def obtenerAltura()
        return @altura
    end
    # def establecerAuto(nuevoAuto)
    #     @auto=nuevoAuto
    # end
    def establecerTablero(ancho,altura)
        @ancho=ancho
        @altura=altura
    end
    # def obtenerAuto()
    #     @auto
    # end
    def verificarBordes(auto)
        if(auto.obtenerY()<0 || auto.obtenerY()>@altura || auto.obtenerX()<0 || auto.obtenerX()>@ancho)
            return false
        end
        
        return true
    end
end