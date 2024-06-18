class Cerveza {
	const property lupulo
	const property origen
	
	method graduacion()
}

class Rubia inherits Cerveza{
	var property graduacion
}

class Negra inherits Cerveza{
	override method graduacion() = graduacionReglamentaria.graduacion().min(lupulo * 2)
}

class Roja inherits Negra{
	override method graduacion() = super() * 1.25
}

class Jarra {
	const property capacidadJarra
	const property marca
	
	method contenidoAlcohol() = capacidadJarra * marca.graduacion()
}

object graduacionReglamentaria {
	var property graduacion = 0.04
}