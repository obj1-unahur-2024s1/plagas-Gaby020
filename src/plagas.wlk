import elementos.*

class Plaga { 
	var poblacion
	method nivelDeDanio() = poblacion
	//method transmiteEnfermedades() = poblacion >= 10
	method transmiteEnfermedades() = poblacion >= 10 && self.segundaCondicion()
	method segundaCondicion()
	method atacarElemento(unElemento){
		unElemento.recibirAtaqueDe(self)
		self.efectoAtaque()
	}
	method efectoAtaque(){poblacion *= 1.1}
}

class Cucarachas inherits Plaga {
	var pesoPromedioBicho
	
	override method nivelDeDanio() = poblacion * 0.5
	//override method transmiteEnfermedades() = super() and pesoPromedioBicho >= 10
	override method segundaCondicion() = pesoPromedioBicho >= 10
	override method efectoAtaque(){
		super()
		pesoPromedioBicho += 2
	}
}

class Pulgas inherits Plaga {
	override method nivelDeDanio() = poblacion * 2
	override method segundaCondicion() = true
	override method efectoAtaque(){poblacion *= 1.2}
}

class Garrapatas inherits Pulgas {
	
}

class Mosquitos inherits Plaga {
	override method segundaCondicion() = poblacion % 3 == 0
}