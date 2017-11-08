import model.TiposDeTempano.*

class Tempano {
	var peso
	var tipo = new Compacto()

	constructor(kilos) {
		peso = kilos
	}

	method tipo(unTipo) {
		tipo = unTipo
	}

	method seVeAzul() {
		return tipo.saberSiSeVeAzul(self.parteVisible())

	}

	method parteVisible() {
		return peso * 0.15
	}

	method cuantoEnfriaElAgua() {
		return tipo.gradosQueEnfriaElAgua(peso)

	}

	method esGrande() {
		return peso > 500
	}

	method peso() {
		return peso
	}
	
	method aumentarPeso(cantidad){
		
		peso+=cantidad
		
	}
	
	method cambiarAAireadoSiEsGrande(tempano){
		
		
		if(tempano.esGrande()){tempano.tipo(new Aireado())}
		
		
	}
}