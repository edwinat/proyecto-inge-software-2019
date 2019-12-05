require 'sinatra'
require './lib/Tablero'
require './lib/Auto'

#class App <Sinatra::Base
    #Inizialisamos el tablero con el auto
    $tablero=Tablero.new
    $automovil=Auto.new
    $tablero.establecerAuto($automovil)
    $coordenada_X=$automovil.obtenerX()
    $coordenada_Y=$automovil.obtenerY()
    $orientacion=$automovil.obtenerOrientacion()
    #------------Controller----------------
    get '/' do
        erb:home
    end
    post '/simular' do
        
        @nombre=params[:nombre]
        @posicionX=$coordenada_X
        @posicionY=$coordenada_Y
        @orientacionNueva=$orientacion
        erb:simular
#    end


end