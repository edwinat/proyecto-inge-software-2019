function myFunctionA() {
  let posicionX=enviardatos.datosX+20;
  console.log(posicionX);
  let posicionY=enviardatos.datosY
  document.getElementById("myDiv").style.padding = "150px 0px 0px "+posicionX+"px";//adelante
}
function myFunctionI() {
  document.getElementById("myDiv").style.padding = "170px 0px 0px 10px";//arriba
}
function myFunctionD() {
  document.getElementById("myDiv").style.padding = "120px 0px 0px 10px";//abajo
}

function enviardatos(datos) {
  // posicionX = datos.datosX;
  // posicionY = datos.datosY;
  // console.log(posicionX, posicionY);
  return datos;
}

