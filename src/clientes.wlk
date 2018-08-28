object ludmila {
	method precioPactadoPorKm() { return 18 } 	
}

object anaMaria {
	method precioPactadoPorKm() { return 30 }
}

object teresa {
	method precioPactadoPorKm() { return 22 }
}

object melina {
	var _cliente = "definir"
	method setCliente(cliente) {
		_cliente = cliente
	}
	
	method precioPactadoPorKm() {
		return _cliente.precioPactadoPorKm()-3
	}
}