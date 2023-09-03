object galvan {
	var sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
	method sueldo() = sueldo
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	method cobrarSueldo(){
		totalDinero = totalDinero + 0.max(sueldo - totalDeuda)
		totalDeuda = 0.max(totalDeuda - sueldo)
	}
	method gastar(cant){
		totalDeuda = totalDeuda + 0.max(cant - totalDinero)
		totalDinero = 0.max(totalDinero - cant)
	}
}

object baigorria {
	const sueldo = 150
	var cantEmpanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo() = sueldo * cantEmpanadasVendidas
	method totalCobrado() = totalCobrado
	method venderEmpanadas(cant){
		cantEmpanadasVendidas = cant
	}
	method cobrarSueldo(){
		totalCobrado = totalCobrado + (sueldo * cantEmpanadasVendidas)
	}
}

object srGimenez {
	var fondoSueldo = 3000000
	
	method fondoSueldo() = fondoSueldo
	method pagarA(empleado) {
    	fondoSueldo = fondoSueldo - empleado.sueldo()
    	empleado.cobrarSueldo()
	}
}