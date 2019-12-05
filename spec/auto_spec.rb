require './lib/Auto'
RSpec.describe Auto do
    before(:each) do 
        @auto=Auto.new
    end

    it 'al crear el auto este en la posicion x igual 0' do
        #auto=Auto.new
        expect(@auto.obtenerX()).to eq(0)
    end
    it 'al crear el auto este en la posicion y igual 0' do
        #auto=Auto.new
        expect(@auto.obtenerY()).to eq(0)
    end
    it 'al crear el auto este de mirar al Este' do
        #auto=Auto.new
        expect(@auto.obtenerOrientacion()).to eq("Este")
    end
    it 'al establecer una posicion(1,1) deberia devolver esa posicion x=1, y=1 ' do
        #auto=Auto.new
        @auto.establecerPosicion(1,1)
        expect(@auto.obtenerX()).to eq(1)
        expect(@auto.obtenerY()).to eq(1)
    end
    it 'aumentar el valor de x mas 1 cuando avanzo a delante' do
        #auto=Auto.new
        @auto.establecerPosicion(1,1)
        expect(@auto.avanzarAdelante()).to eq(2)
        
    end
    it 'aumentar el valor de y mas 1 cuando avanzo a la izquierda' do
        #auto=Auto.new
        @auto.establecerPosicion(1,1)
        expect(@auto.avanzarIzquierda()).to eq(2)
        
    end
    it 'restar el valor de y menos 1 cuando avanzo a la derecha' do
        #auto=Auto.new
        @auto.establecerPosicion(1,1)
        expect(@auto.avanzarDerecha()).to eq(0)
        
    end
    it 'al moverse adelante solo "x" debe aumentar en 1 y "y" en la misma posicion con orientacion "Este"' do
        #auto=Auto.new
        @auto.establecerPosicion(1,1)
        @auto.avanzarAdelante()
        expect(@auto.obtenerX()).to eq(2)
        expect(@auto.obtenerY()).to eq(1)
        expect(@auto.obtenerOrientacion()).to eq("Este")
        
    end
    it 'al moverse a la izquierda solo "y" debe aumentar en 1 y "x" en la misma posicion con orientacion "Este" ' do
        #auto=Auto.new
        @auto.establecerPosicion(1,1)
        @auto.avanzarIzquierda()
        expect(@auto.obtenerX()).to eq(1)
        expect(@auto.obtenerY()).to eq(2)
        expect(@auto.obtenerOrientacion()).to eq("Este")
        
    end
    it 'al moverse a la derecha solo "y" debe disminuir en 1 y "x" en la misma posicion con orientacion "Este" ' do
        #@auto=Auto.new
        @auto.establecerPosicion(1,1)
        @auto.avanzarDerecha()
        expect(@auto.obtenerX()).to eq(1)
        expect(@auto.obtenerY()).to eq(0)
        expect(@auto.obtenerOrientacion()).to eq("Este")
        
    end
    
   

end