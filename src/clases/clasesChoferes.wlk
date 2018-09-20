class ChoferBasico {
	method precioViaje(cliente,kms){
		return cliente.precioPactadoPorKm()*kms
	}
}

class ChoferConMinimo {
	method precioViaje(cliente,kms) {
		return 50.max(cliente.precioPactadoPorKm()*kms)
	}
}

class ChoferDeReemplazo {
	var _chofer
	method reemplazaA(chofer) { _chofer=chofer}
	method precioViaje(cliente,kms) { 
		return _chofer.precioViaje(cliente,kms)
	}
}


