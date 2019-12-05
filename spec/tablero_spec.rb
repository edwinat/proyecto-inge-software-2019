require 'Tablero'
require 'Auto'
RSpec.describe Tablero do
    it 'al crear tablero tiene un tamaño por defecto 6x8 ver su base 8' do
        tablero=Tablero.new
        expect(tablero.obtenerBase()).to eq(8)
                        
    end
    it 'al crear tablero tiene un tamaño por defecto 6x8 ver su base 6' do
        tablero=Tablero.new
        expect(tablero.obtenerAltura()).to eq(6)
                        
    end
    it 'al crear tablero se tiene un auto podefecto' do
        tablero=Tablero.new
        auto=tablero.obtenerAuto()
        expect(auto.obtenerX()).to eq(0)
        expect(auto.obtenerY()).to eq(0)

    end
    it 'verificar si el auto esta fuera del tablero de la parte superior con un false' do
        tablero=Tablero.new
        auto=tablero.obtenerAuto()
        auto.establecerPosicion(0,-1)
        expect(tablero.verificarBordes(auto)).to eq(false)
        

    end
    it 'verificar si el auto esta fuera del tablero de la parte inferior con un false' do
        tablero=Tablero.new
        auto=tablero.obtenerAuto()
        auto.establecerPosicion(0,7)
        expect(tablero.verificarBordes(auto)).to eq(false)
        

    end
    it 'verificar si el auto esta fuera del tablero de la parte izquiera con un false' do
        tablero=Tablero.new
        auto=tablero.obtenerAuto()
        auto.establecerPosicion(-1,0)
        expect(tablero.verificarBordes(auto)).to eq(false)
        

    end
    it 'verificar si el auto esta fuera del tablero de la parte derecha con un false' do
        tablero=Tablero.new
        auto=tablero.obtenerAuto()
        auto.establecerPosicion(9,0)
        expect(tablero.verificarBordes(auto)).to eq(false)
        

    end
    
    it 'al establecer base 5 y altura 5 del tablero ' do
        tablero=Tablero.new
        tablero.establecerTablero(5,5)
        expect(tablero.obtenerBase()).to eq(5)
        expect(tablero.obtenerAltura()).to eq(5)
    end

    it 'agregar un auto al tablero ' do
        tablero=Tablero.new
        auto=Auto.new
        tablero.establecerAuto(auto)
        expect(tablero.obtenerAuto()).to eq(auto)
    end

end