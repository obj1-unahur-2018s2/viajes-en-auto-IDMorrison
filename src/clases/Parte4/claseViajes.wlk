class Viaje {
	var _kms
	var _cliente
	var _costo
	method registrar(cliente,kms,costo){
		_cliente=cliente
		_kms=kms
		_costo=costo
	}
	method mostrarCliente() { return _cliente }
	method mostrarKms() { return _kms }
	method mostrarCosto() { return _costo }
}
