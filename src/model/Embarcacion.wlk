

class Embarcacion {
	
	var tamanio
	var fuerza
	
	constructor(metros,newtons){
		
		tamanio = metros
		fuerza = newtons
		
	}
	
	method navegarPor(masaDeAgua){
		
		masaDeAgua.puedeNavegar(self)
		masaDeAgua.efectoDeNavegacion()
		
	}
	
	method tamanio(){
		
		return tamanio
		
	}
	
	method fuerza(){
		
		return fuerza
		
	}
	
}