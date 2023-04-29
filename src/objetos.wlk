/** First Wollok example */
import wollok.game.*

object suplente {
	
	method nombreCamiseta() {
		return "suplente"
	}
	
	method proximaCamiseta() {
		return titular
	}
	
}

object titular {
	method nombreCamiseta() {
		return "titular"
	}	
	
	method proximaCamiseta() {
		return suplente
	}
}

object lionel {
	
	var property position = game.at(3,5)
	var camiseta = titular
	
	method image() {
		return "lionel-" + camiseta.nombreCamiseta() + ".png"
	}
	method buscar(algo) {
		position = algo.position()
	}
	
	method cambiarCamiseta() {
		camiseta = camiseta.proximaCamiseta()			
	}
	
	method validarPosition(algo) {
		if(position != algo.position()) {
			self.error("No estoy donde puedo hacerlo")
		}
	}
	
	method llevar(pelota) {
		self.validarPosition(pelota)
		pelota.serLlevada(self)
	}
	
	method taquito(pelota) {
		self.validarPosition(pelota)
		pelota.taquito()
	}
	
}

object llevada {

	var property jugador = null
	
	method position() {
		return jugador.position()
	}
	
	method position(_position) {
		self.error("me estan llevando")
	}
		
}

object libre {
	
	var property position = game.at(5,5)


}


object pelota {
	const property image="pelota.png"
	
	var estado = libre
	
	method position(_position) {
		estado.position(_position)
	}
	method esquina(){
		self.position(game.at(0,0))
	}	
	
	method serLlevada(_jugador) {
		llevada.jugador(_jugador)
		estado = llevada	
	}
	
	method dejarLlevada() {
		libre.position(self.position())
		estado = libre
	}
	
	method position() {
		return estado.position()
	}
	
	method calcularTaquito() {
		const nuevoX = 0.max(self.position().x()-2)
		const nuevaY = self.position().y()
		return game.at( nuevoX , nuevaY)
	}
	
	method taquito() {
		self.dejarLlevada()
		self.position(self.calcularTaquito())
	}
	
	
	
	
	
	
	
		
}