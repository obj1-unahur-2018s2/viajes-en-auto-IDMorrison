import claseViajes.*
import clasesClientes.*

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
	const viajes = []
	method reemplazaA(chofer) { _chofer=chofer}
	method precioViaje(cliente,kms) { 
		return _chofer.precioViaje(cliente,kms)
	}
	
	method hacerViaje(cliente,kms) {
		viajes.add(new Viaje())
		viajes.last().registrar(cliente,kms,self.precioViaje(cliente,kms))
	}
	method mostrarUltimo() { return viajes.last() }
}


