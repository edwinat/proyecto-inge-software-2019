require 'Tablero'
require 'Auto'
RSpec.describe Tablero do
    before(:each) do 
        @tablero=Tablero.new
        @auto=Auto.new
        
    end
     it 'al crear tablero tiene un tamaño por defecto 6x8 ver su Ancho 8' do
        
         expect(@tablero.obtenerAncho()).to eq(8)
                        
     end
      it 'al crear tablero tiene un tamaño por defecto 6x8 ver su Ancho 6' do
        
          expect(@tablero.obtenerAltura()).to eq(6)
                        
      end
      it 'al crear tablero se tiene un auto podefecto' do
        
          
          expect(@auto.obtenerX()).to eq(0)
          expect(@auto.obtenerY()).to eq(0)
          expect(@auto.obtenerOrientacion()).to eq("Este")

      end
      it 'verificar si el auto esta fuera del tablero de la parte superior con un false' do
        
          
          @auto.establecerPosicionOrientacion(0,-1,"Este")
          expect(@tablero.verificarBordes(@auto)).to eq(false)
        

      end
     it 'verificar si el auto esta fuera del tablero de la parte inferior con un false' do
        
         
         @auto.establecerPosicionOrientacion(0,7,"Este")
         expect(@tablero.verificarBordes(@auto)).to eq(false)
        

     end
      it 'verificar si el auto esta fuera del tablero de la parte izquiera con un false' do
        
          
          @auto.establecerPosicionOrientacion(-1,0,"Este")
          expect(@tablero.verificarBordes(@auto)).to eq(false)
        

      end
      it 'verificar si el auto esta fuera del tablero de la parte derecha con un false' do
        
          
          @auto.establecerPosicionOrientacion(9,0,"Este")
          expect(@tablero.verificarBordes(@auto)).to eq(false)
        

      end
      it 'verificar si el auto esta fuera del tablero de la parte derecha con un True' do
        
          
        @auto.establecerPosicionOrientacion(5,0,"Este")
        expect(@tablero.verificarBordes(@auto)).to eq(true)
      

    end
    it 'verificar si el auto esta fuera del tablero de la parte derecha con un True' do
        
          
        @auto.establecerPosicionOrientacion(0,5,"Este")
        expect(@tablero.verificarBordes(@auto)).to eq(true)
      

    end
    it 'verificar si el auto esta fuera del si el tablero es altura=5 ancho=6 y el auto este en la posicion x=1, y=2 y orientacion=Norte se halla movido="IAIAIAIAA" que este dentro el tablero salga true' do        
        @tablero.establecerTablero(5,5)
        @auto.establecerPosicionOrientacion(1,2,"Norte")
        @auto.avanzarAvanzado("IAIAIAIAA")

        expect(@tablero.verificarBordes(@auto)).to eq(true)
      

    end
    
      it 'al establecer Ancho 5 y altura 5 del tablero ' do
        
          @tablero.establecerTablero(5,5)
          expect(@tablero.obtenerAncho()).to eq(5)
          expect(@tablero.obtenerAltura()).to eq(5)
      end

    # #  it 'agregar un auto al tablero ' do
        
    # #      auto=Auto.new
    # #     @tablero.establecerAuto(auto)
    # #      expect(@tablero.obtenerAuto()).to eq(auto)
    # #  end

end