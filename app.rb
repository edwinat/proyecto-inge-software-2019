require 'sinatra'
require './lib/Tablero'
require './lib/Auto'

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
end

post '/avanzar' do
    @orientacionNueva=params[:orientacionActual]
    $automovil.establecerPosicion(params[:posicionActualX].to_i,params[:posicionActualY].to_i)
    $automovil.avanzarAdelante()
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    erb:simular
end

  post '/izquierda' do
    @orientacionNueva=params[:orientacionActual]
    $automovil.establecerPosicion(params[:posicionActualX].to_i,params[:posicionActualY].to_i)
    $automovil.avanzarIzquierda()
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    erb:simular
  end

  post '/derecha' do
    @orientacionNueva=params[:orientacionActual]
    $automovil.establecerPosicion(params[:posicionActualX].to_i,params[:posicionActualY].to_i)
    $automovil.avanzarDerecha()
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    erb:simular
  end