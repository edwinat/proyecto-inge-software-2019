class Auto
    def initialize
        @posicionX=0
        @posicionY=0
        @orientacion='Este'
    end
    

    def obtenerX()
        return @posicionX
    end
    def obtenerY()
        return @posicionY
    end
    def obtenerOrientacion()
        return @orientacion
    end
    def establecerPosicion(x,y)
        @posicionX=x
        @posicionY=y

    end
    def avanzarAdelante()
        @posicionX=@posicionX+1
    end
    def avanzarIzquierda()
        @posicionY=@posicionY+1
    end
    def avanzarDerecha()
        @posicionY=@posicionY-1
    end
end