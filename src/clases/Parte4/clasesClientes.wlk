class ClienteBasico {
	var _precio
	method setPrecio(precio) { _precio=precio }
	method precioPactadoPorKm() { return _precio }

}

class ClienteCadete {
	var _cliente
	method setCliente(cliente) { _cliente=cliente }
	method precioPactadoPorKm() { return _cliente.precioPactadoPorKm() -3 }
}

