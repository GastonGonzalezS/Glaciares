

class Compacto {

	method saberSiSeVeAzul(parteVisible) {
		
		return parteVisible > 100
		
	}
	
	method gradosQueEnfriaElAgua(peso){
		
		return peso/100
		
	}

}

class Aireado {
	
	method saberSiSeVeAzul(parteVisible) {
		
		return false
		
	}
	
	method gradosQueEnfriaElAgua(peso){
		
		return 0.5
		
	}
	
	
}