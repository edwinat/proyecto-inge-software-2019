require 'sinatra'
require './lib/Tablero'
require './lib/Auto'

#Inizialisamos el tablero con el auto
$tablero=Tablero.new
$automovil=Auto.new

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
    $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
    $automovil.avanzarAvanzado("A")
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    erb:simular
end

  post '/izquierda' do
    @orientacionNueva=params[:orientacionActual]
    $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
    $automovil.avanzarAvanzado("I")
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    erb:simular
  end

  post '/derecha' do
    @orientacionNueva=params[:orientacionActual]
    $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
    $automovil.avanzarAvanzado("D")
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    erb:simular
  end