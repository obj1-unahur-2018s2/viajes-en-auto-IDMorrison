import clasesClientes.*

object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
	method precioViaje(cliente, kms){
		return cliente.precioPactadoPorKm()*kms *1.2
	}
}

object mariela {
	method precioViaje(cliente, kms) {
		return 50.max(cliente.precioPactadoPorKm()*kms)
	}
}

object juana {
	method precioViaje (cliente, kms) {
		if (kms<=8) {return 100}
		else {return 200}
	}
}

object lucia {
	var _chofer = "definir"
	method reemplazaA(chofer) { _chofer=chofer }
	method precioViaje(cliente, kms) {
		return _chofer.precioViaje(cliente, kms)
	}
}

