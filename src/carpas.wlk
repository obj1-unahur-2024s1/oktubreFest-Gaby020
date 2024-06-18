class Carpa {
	const property capacidadDeCarpa
	const property tieneBanda
	const property marcaCerveza
	var property personasDentro = []
	
	
	method dejaIngresar(persona){
		return capacidadDeCarpa > personasDentro.size() and not persona.estaEbria()
	}
	
	// push test
}
