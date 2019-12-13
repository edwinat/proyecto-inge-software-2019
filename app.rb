require 'sinatra'
require './lib/Tablero'
require './lib/Auto'

#Inizialisamos el tablero con el auto
$TABLERO=Tablero.new
$automovil1=Auto.new
$automovil2=Auto.new
$automovil3=Auto.new
$automovil4=Auto.new
$automovil5=Auto.new
$cantidadAutos=0

#------------Controller----------------
get '/' do
    erb:home
end

post '/configuracion' do
    @nombre=params[:nombre]
    erb:tamanio
end

post '/ajustes' do
    $TABLERO.establecerTablero(params[:ancho].to_i,params[:altura].to_i)
    $cantidadAutos=params[:cantidadAutos].to_i
    @cantidadAutosParametro=$cantidadAutos

    erb:ajustes
end

post '/simulacion' do
    $automovil1.establecerPosicionOrientacion(params[:posicionActualX1].to_i,params[:posicionActualY1].to_i,params[:orientacionNueva1])
    $automovil2.establecerPosicionOrientacion(params[:posicionActualX2].to_i,params[:posicionActualY2].to_i,params[:orientacionNueva2])
    $automovil3.establecerPosicionOrientacion(params[:posicionActualX3].to_i,params[:posicionActualY3].to_i,params[:orientacionNueva3])
    $automovil4.establecerPosicionOrientacion(params[:posicionActualX4].to_i,params[:posicionActualY4].to_i,params[:orientacionNueva4])
    $automovil5.establecerPosicionOrientacion(params[:posicionActualX5].to_i,params[:posicionActualY5].to_i,params[:orientacionNueva5])
    $automovil1.establecerNombre(params[:nombre1])
    $automovil2.establecerNombre(params[:nombre2])
    $automovil3.establecerNombre(params[:nombre3])
    $automovil4.establecerNombre(params[:nombre4])
    $automovil5.establecerNombre(params[:nombre5])


    @estaDentroTablero1=$TABLERO.verificarBordes($automovil1)
    @estaDentroTablero2=$TABLERO.verificarBordes($automovil2)
    @estaDentroTablero3=$TABLERO.verificarBordes($automovil3)
    @estaDentroTablero4=$TABLERO.verificarBordes($automovil4)
    @estaDentroTablero5=$TABLERO.verificarBordes($automovil5)

    @nombre1=$automovil1.obtenerNombre()
    @posicionX1=$automovil1.obtenerX()
    @posicionY1=$automovil1.obtenerY()
    @orientacionNueva1=$automovil1.obtenerOrientacion()

    @nombre2=$automovil2.obtenerNombre()
    @posicionX2=$automovil2.obtenerX()
    @posicionY2=$automovil2.obtenerY()
    @orientacionNueva2=$automovil2.obtenerOrientacion()

    @nombre3=$automovil3.obtenerNombre()
    @posicionX3=$automovil3.obtenerX()
    @posicionY3=$automovil3.obtenerY()
    @orientacionNueva3=$automovil3.obtenerOrientacion()

    @nombre4=$automovil4.obtenerNombre()
    @posicionX4=$automovil4.obtenerX()
    @posicionY4=$automovil4.obtenerY()
    @orientacionNueva4=$automovil4.obtenerOrientacion()

    @nombre5=$automovil5.obtenerNombre()
    @posicionX5=$automovil5.obtenerX()
    @posicionY5=$automovil5.obtenerY()
    @orientacionNueva5=$automovil5.obtenerOrientacion()

    @cantidadAutosParametro=$cantidadAutos
    @altura=$TABLERO.obtenerAltura()
    @ancho=$TABLERO.obtenerAncho()

    erb:simular
end

post '/ejecutar' do
  
    $automovil1.establecerPosicionOrientacion(params[:posicionActualX1].to_i,params[:posicionActualY1].to_i,params[:orientacionNueva1])
    $automovil2.establecerPosicionOrientacion(params[:posicionActualX2].to_i,params[:posicionActualY2].to_i,params[:orientacionNueva2])
    $automovil3.establecerPosicionOrientacion(params[:posicionActualX3].to_i,params[:posicionActualY3].to_i,params[:orientacionNueva3])
    $automovil4.establecerPosicionOrientacion(params[:posicionActualX4].to_i,params[:posicionActualY4].to_i,params[:orientacionNueva4])
    $automovil5.establecerPosicionOrientacion(params[:posicionActualX5].to_i,params[:posicionActualY5].to_i,params[:orientacionNueva5])
    
    $automovil1.avanzarAvanzado(params[:movimientos1].to_s)
    $automovil2.avanzarAvanzado(params[:movimientos2].to_s)
    $automovil3.avanzarAvanzado(params[:movimientos3].to_s)
    $automovil4.avanzarAvanzado(params[:movimientos4].to_s)
    $automovil5.avanzarAvanzado(params[:movimientos5].to_s)

    @estaDentroTablero1=$TABLERO.verificarBordes($automovil1)
    @estaDentroTablero2=$TABLERO.verificarBordes($automovil2)
    @estaDentroTablero3=$TABLERO.verificarBordes($automovil3)
    @estaDentroTablero4=$TABLERO.verificarBordes($automovil4)
    @estaDentroTablero5=$TABLERO.verificarBordes($automovil5)

    @nombre1=$automovil1.obtenerNombre()
    @posicionX1=$automovil1.obtenerX()
    @posicionY1=$automovil1.obtenerY()
    @orientacionNueva1=$automovil1.obtenerOrientacion()

    @nombre2=$automovil2.obtenerNombre()
    @posicionX2=$automovil2.obtenerX()
    @posicionY2=$automovil2.obtenerY()
    @orientacionNueva2=$automovil2.obtenerOrientacion()

    @nombre3=$automovil3.obtenerNombre()
    @posicionX3=$automovil3.obtenerX()
    @posicionY3=$automovil3.obtenerY()
    @orientacionNueva3=$automovil3.obtenerOrientacion()

    @nombre4=$automovil4.obtenerNombre()
    @posicionX4=$automovil4.obtenerX()
    @posicionY4=$automovil4.obtenerY()
    @orientacionNueva4=$automovil4.obtenerOrientacion()

    @nombre5=$automovil5.obtenerNombre()
    @posicionX5=$automovil5.obtenerX()
    @posicionY5=$automovil5.obtenerY()
    @orientacionNueva5=$automovil5.obtenerOrientacion()

    @cantidadAutosParametro=$cantidadAutos
    @altura=$TABLERO.obtenerAltura()
    @ancho=$TABLERO.obtenerAncho()

    erb:simular
end
