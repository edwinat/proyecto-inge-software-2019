require './lib/Auto'
RSpec.describe Auto do
    before(:each) do 
        @auto=Auto.new
        @auto.establecerNombre("auto")
        @auto.establecerPosicionOrientacion(1,1,"Este")
    end

    it 'al crear el auto este en la posicion x igual 1' do
        expect(@auto.obtenerX()).to eq(1)
    end
    it 'al crear el auto esta con el nombre "auto"' do
        expect(@auto.obtenerNombre()).to eq("auto")
    end
    it 'establecer nombre del auto "cadilack"' do
        expect(@auto.establecerNombre("cadilack")).to eq("cadilack")
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

    it 'si el auto esta al "Sur" al girar izquierda deberia mirar al "Este"' do
        @auto.establecerPosicionOrientacion(0,0,"Sur")
        @auto.girarIzquierda()
        expect(@auto.obtenerOrientacion()).to eq("Este")
    end
    it 'si el auto esta al "Norte" al girar izquierda deberia mirar al "Oeste"' do
        @auto.establecerPosicionOrientacion(0,0,"Norte")
        @auto.girarIzquierda()
        expect(@auto.obtenerOrientacion()).to eq("Oeste")
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

    it 'si el auto esta al "Sur" al girar derecha deberia mirar al "Oeste"' do
        @auto.establecerPosicionOrientacion(0,0,"Sur")
        @auto.girarDerecha()
        expect(@auto.obtenerOrientacion()).to eq("Oeste")
    end
    it 'si el auto esta al "Norte" al girar derecha deberia mirar al "Este"' do
        @auto.establecerPosicionOrientacion(0,0,"Norte")
        @auto.girarDerecha()
        expect(@auto.obtenerOrientacion()).to eq("Este")
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
    it ' si ponemos "A" endria que esta "x=1" ,"y=0" y "Orientacion=Este"' do
        @auto.establecerPosicionOrientacion(0,0,"Este")
        @auto.avanzarSimple("A")
        expect(@auto.obtenerX).to eq(1)
        expect(@auto.obtenerY).to eq(0)
        expect(@auto.obtenerOrientacion).to eq("Este")
        
    end
    it ' si ponemos "I" endria que esta "x=1" ,"y=2" y "Orientacion=Norte"' do
        @auto.establecerPosicionOrientacion(1,1,"Este")
        @auto.avanzarSimple("I")
        expect(@auto.obtenerX).to eq(1)
        expect(@auto.obtenerY).to eq(2)
        expect(@auto.obtenerOrientacion).to eq("Norte")
        
    end
    it ' si ponemos "D" endria que esta "x=1" ,"y=0" y "Orientacion=Sur"' do
        @auto.establecerPosicionOrientacion(1,1,"Este")
        @auto.avanzarSimple("D")
        expect(@auto.obtenerX).to eq(1)
        expect(@auto.obtenerY).to eq(0)
        expect(@auto.obtenerOrientacion).to eq("Sur")
        
    end
    it ' si ponemos "A" endria que esta "x=2" ,"y=1" y "Orientacion=Sur"' do
        @auto.establecerPosicionOrientacion(1,1,"Este")
        @auto.avanzarAvanzado("A")
        expect(@auto.obtenerX).to eq(2)
        expect(@auto.obtenerY).to eq(1)
        expect(@auto.obtenerOrientacion).to eq("Este")
        
    end
    it ' si ponemos "AI" endria que esta "x=2" ,"y=2" y "Orientacion=Norte"' do
        @auto.establecerPosicionOrientacion(1,1,"Este")
        @auto.avanzarAvanzado("AI")
        expect(@auto.obtenerX).to eq(2)
        expect(@auto.obtenerY).to eq(2)
        expect(@auto.obtenerOrientacion).to eq("Norte")
        
    end
    it ' si ponemos "AID" endria que esta "x=3" ,"y=2" y "Orientacion=Este"' do
        @auto.establecerPosicionOrientacion(1,1,"Este")
        @auto.avanzarAvanzado("AID")
        expect(@auto.obtenerX).to eq(3)
        expect(@auto.obtenerY).to eq(2)
        expect(@auto.obtenerOrientacion).to eq("Este")
        
    end


    
    
end