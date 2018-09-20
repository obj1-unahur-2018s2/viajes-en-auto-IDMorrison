import claseViajes.*
import clasesClientes.*
import clasesCobros.*

class Chofer {
	var _cobrar
	const viajes = []
	
	method cobrasAsi(cobro) {
		_cobrar = cobro 
	} 
	
	method precioViaje(cliente,kms) { 
		return _cobrar.precioViaje(cliente,kms)
	}
	
	method hacerViaje(cliente,kms) {
		viajes.add(new Viaje())
		viajes.last().registrar(cliente,kms,self.precioViaje(cliente,kms))
	}
	method mostrarViajes() { return viajes.asList() }
	method mostrarUltimo() { return viajes.last() } // method para test
	
}
