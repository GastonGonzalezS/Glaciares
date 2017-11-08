import model.Tempano.*

class Glaciar{
	
	
	var desembocadura
	var masa
	
	constructor(unaMasa,unaDesembocadura){
		
		desembocadura = unaDesembocadura
		masa = unaMasa
	}
	
	method desembocadura(){
		
		return desembocadura
		
	}
	
	
	method temperatura(){
		
		return 1
		
	}
	
	method pesoInicialTempano(){
		
		return masa/1000000 * (desembocadura.temperatura()).abs()
		
	}
	
	method modificarMasa(cantidad){
		
		masa+=cantidad
		
	}
	
	method desprendimiento(){
		
		var tempanoDesprendido = new Tempano(self.pesoInicialTempano())
		self.modificarMasa(-tempanoDesprendido.peso())
		desembocadura.caeDesprendimiento(tempanoDesprendido)
	}
	
	method caeDesprendimiento(desprendimiento){
		
		self.modificarMasa(desprendimiento.peso())
		
	}
	
}