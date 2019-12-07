require './lib/Auto'
RSpec.describe Auto do
    before(:each) do 
        @auto=Auto.new
        @auto.establecerPosicionOrientacion(1,1,"Este")
    end

    it 'al crear el auto este en la posicion x igual 1' do
        expect(@auto.obtenerX()).to eq(1)
    end
    it 'al crear el auto este en la posicion y igual 1' do
        expect(@auto.obtenerY()).to eq(1)
    end
    it 'al crear el auto este de mirar al Este' do
        expect(@auto.obtenerOrientacion()).to eq("Este")
    end
    it 'al establecer una posicion(1,1,"Este") deberia devolver esa posicion x=1, y=1 ,orientacion="Este"' do

        expect(@auto.obtenerX()).to eq(1)
        expect(@auto.obtenerY()).to eq(1)
        expect(@auto.obtenerOrientacion()).to eq("Este")
    end
    it 'si el auto esta al "Este" al girar izquierda deberia mirar al "Norte"' do
        @auto.girarIzquierda()
        expect(@auto.obtenerOrientacion()).to eq("Norte")
    end

    it 'si el auto esta al "Oeste" al girar izquierda deberia mirar al "Sur"' do
        @auto.establecerPosicionOrientacion(0,0,"Oeste")
        @auto.girarIzquierda()
        expect(@auto.obtenerOrientacion()).to eq("Sur")
    end

    it 'si el auto esta al "Este" al girar derecha deberia mirar al "Sur"' do
        @auto.girarDerecha()
        expect(@auto.obtenerOrientacion()).to eq("Sur")
    end

    it 'si el auto esta al "Oeste" al girar derecha deberia mirar al "Norte"' do
        @auto.establecerPosicionOrientacion(0,0,"Oeste")
        @auto.girarDerecha()
        expect(@auto.obtenerOrientacion()).to eq("Norte")
    end


    it 'aumentar el valor de " x + 1 " cuando avanzo a delante en orientacion "Este"' do
        @auto.avanzarAdelante()
        expect(@auto.obtenerX).to eq(2)
        expect(@auto.obtenerY).to eq(1)
    end
    it 'aumentar el valor de " y + 1 " cuando avanzo a delante en orientacion "Norte"' do
        @auto.establecerPosicionOrientacion(1,1,"Norte")
        @auto.avanzarAdelante()
        expect(@auto.obtenerX).to eq(1)
        expect(@auto.obtenerY).to eq(2)
        
    end

    it 'aumentar el valor de " x - 1 " cuando avanzo a delante en orientacion "Oeste"' do
        @auto.establecerPosicionOrientacion(1,1,"Oeste")
        @auto.avanzarAdelante()
        expect(@auto.obtenerX).to eq(0)
        expect(@auto.obtenerY).to eq(1)
        
    end

    it 'aumentar el valor de " y - 1 " cuando avanzo a delante en orientacion "Sud"' do
        @auto.establecerPosicionOrientacion(1,1,"Sur")
        @auto.avanzarAdelante()
        expect(@auto.obtenerX).to eq(1)
        expect(@auto.obtenerY).to eq(0)
        
    end
    
end