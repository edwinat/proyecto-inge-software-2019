require 'sinatra'
require './lib/Tablero'
require './lib/Auto'

#Inizialisamos el tablero con el auto
$tablero=Tablero.new
$automovil=Auto.new
$lista_autos=Array.new

$orientacion=$automovil.obtenerOrientacion()
#------------Controller----------------
get '/' do
    erb:home
end

post '/configuracion' do
    @nombre=params[:nombre]

    erb:tamanio
end

post '/ajustes' do
    #@nombre=params[:nombre]

    erb:ajustes
end

post '/simulacion' do
    $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
    $tablero.establecerTablero(params[:ancho].to_i,params[:altura].to_i)
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    @orientacionNueva=$automovil.obtenerOrientacion()

    erb:simular
end

post '/avanzar' do
    $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
    $automovil.avanzarAvanzado(params[:movimientos].to_s)
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    @orientacionNueva=$automovil.obtenerOrientacion()

    erb:simular
end

post '/izquierda' do
    $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
    $automovil.avanzarAvanzado(params[:movimientos].to_s)
    @posicionX=$automovil.obtenerX()
    @posicionY=$automovil.obtenerY()
    @orientacionNueva=$automovil.obtenerOrientacion()

    
  end


#   post '/izquierda' do
#     @orientacionNueva=params[:orientacionActual]
#     $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
#     $automovil.avanzarAvanzado("I")
#     @posicionX=$automovil.obtenerX()
#     @posicionY=$automovil.obtenerY()
#     erb:simular
#   end

#   post '/derecha' do
#     @orientacionNueva=params[:orientacionActual]
#     $automovil.establecerPosicionOrientacion(params[:posicionActualX].to_i,params[:posicionActualY].to_i,params[:orientacionActual])
#     $automovil.avanzarAvanzado("D")
#     @posicionX=$automovil.obtenerX()
#     @posicionY=$automovil.obtenerY()
#     erb:simular
#   end