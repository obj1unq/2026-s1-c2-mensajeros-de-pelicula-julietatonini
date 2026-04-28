
object paquete {

	var estaPago = true 


	method estaPago() {
		return estaPago
	}


	method estaPago(_estaPago) { 
		estaPago = _estaPago 
	}


	method puedeSerEntregadoPorEn(persona,destino) {
		return self.estaPago() && destino.puedeRecibirA(persona) 
	}
}




object puenteDeBrooklyn {

	method puedeRecibirA(persona) {
		return persona.peso() <= 1000 
	}

}




object laMatrix {

	method puedeRecibirA(persona) {
		return persona.puedeHacerLlamada()
	}
}




object jeanGray {

	method peso() {
		return 65
	}


	method puedeHacerLlamada() {
		return true
	}
}




object neo {

	var tieneCredito = true

	method peso() {
		return 0
	}


	method puedeHacerLlamada() {
		return tieneCredito
	}


	method tieneCredito(valor) {
		tieneCredito = valor 
	}
}




object saraConnor {

	var pesoPropio = 0

	var vehiculo = moto 


	method peso(vehiculoSara) {                  //? se tiene que llamar igual que la variable?
		return pesoPropio + vehiculoSara.peso()
	}


	method puedeHacerLlamada() {
		return false
	}
}



object moto {

	method peso() {
		return 100
	}
}



object camion {

	var cantidadAcoplados = 0


	method peso() {
		return 500 + (cantidadAcoplados * 500)
	}

	method cantidadAcoplados(cantidad) {
		cantidadAcoplados = cantidad 
	}
}





