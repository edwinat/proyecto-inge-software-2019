class Auto
    def initialize
        @posicionX=0
        @posicionY=0
        @orientacion="Este"
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
    def establecerPosicionOrientacion(x,y,orientacion)
        @posicionX=x
        @posicionY=y
        @orientacion=orientacion
    end

    def girarIzquierda
        case @orientacion
            when 'Este'
                @orientacion="Norte"
            when 'Norte'
                @orientacion="Oeste"
            when 'Oeste'
                @orientacion="Sur"
            when 'Sur'
                @orientacion="Este"
            end
    end

    def girarDerecha
        case @orientacion
        when 'Este'
            @orientacion="Sur"
        when 'Sur'
            @orientacion="Oeste"
        when 'Oeste'
            @orientacion="Norte"
        when 'Norte'
            @orientacion="Este"
        end
    end

    def avanzarAdelante()
        case @orientacion
        when 'Este'
            @posicionX=@posicionX+1
        when 'Sur'
            @posicionY=@posicionY-1
        when 'Oeste'
            @posicionX=@posicionX-1
        when 'Norte'
            @posicionY=@posicionY+1
        end
    end
    def avanzarSimple(letra)
        if(letra == "A")
            avanzarAdelante()
        end
        if(letra == "I")
            girarIzquierda()
            avanzarAdelante()
        end
        if(letra == "D")
            girarDerecha()
            avanzarAdelante()
        end
    end
    def avanzarAvanzado(letras)
        for i in(0..letras.length)
            avanzarSimple(letras[i])
        end
    end


end