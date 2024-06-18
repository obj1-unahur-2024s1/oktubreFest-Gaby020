import marcas.*
import carpas.*

class Persona {
	const jarrasCompradas = []
	const property peso
	var property musicaTradicional
	var property aguante 
	const property nacionalidad
	
	method comprarCerveza(cerveza){ jarrasCompradas.add(cerveza) }
	
	method totalAlcohol() = jarrasCompradas.sum({j => j.contenidoAlcohol()})
	
	method estaEbria() = self.totalAlcohol() * peso > aguante
	
	method leGusta(cerveza)
	
	method quiereEntrar(carpa){
		return self.leGusta(carpa.marcaCerveza()) and self.musicaTradicional() == carpa.tieneBanda()
	}
	
	method puedeEntrar(carpa){
		return self.quiereEntrar(carpa) and carpa.puedeIngresar(self)
	}
	
}

class Belga inherits Persona {
	override method leGusta(cerveza) = cerveza.lupulo() > 0.04
}

class Checo inherits Persona {
	override method leGusta(cerveza) = cerveza.graduacion() > 0.08
}

class Aleman inherits Persona {
	override method leGusta(cerveza) = true
	override method quiereEntrar(carpa){ 
		return super(carpa) and carpa.personasDentro().size() % 2 == 0
	}
	
}