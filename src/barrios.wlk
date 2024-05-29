import elementos.*

class Barrio {
	const elementos = []
	
	method agregarElementos(listaElementos){
		elementos.addAll(listaElementos)
	}
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	method eliminarElementos(elemento){
		elementos.remove(elemento)
	}
	method esCopado() = self.cantidadBuenos() > self.cantidadNoBuenos()
	method cantidadBuenos() = elementos.count{e => e.esBueno()}
	method cantidadNoBuenos() = elementos.count{e => !e.esBueno()}
}
