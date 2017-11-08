

class MasaDeAgua {
	var tempanos

	constructor(unosTempanos) {
		tempanos = unosTempanos
	}

	method esAtractiva() {
		return tempanos.count({ tempano => tempano.seVeAzul() || tempano.esGrande()
		}) >= 6
	}

	method temperatura() {
		return self.temperaturaAmbiente() - tempanos.sum({ tempano =>
		tempano.cuantoEnfriaElAgua() })

	}

	method temperaturaAmbiente() {
		return - 40
	}

	method caeDesprendimiento(desprendimiento) {
		tempanos.add(desprendimiento)

	}

	method cantidadTempanosGrandes() {
		return tempanos.count({ tempano => tempano.esGrande() })

	}

	method puedeNavegar(embarcacion) {
		if (self.cantidadTempanosGrandes() > 20) { return
			self.resitriccionesPor20TempanosGrandes(embarcacion) } return true
	}

	method resitriccionesPor20TempanosGrandes(embarcacion) {
		if (embarcacion.tamanio() >= 10) { throw new No_puede_navegar_en_el_lago_porque_la_embarcacion_mide_10_metros_o_mas()}
			else { if (self.temperatura() < 0) { throw new No_puede_navegar_en_el_lago_porque_este_esta_a_menos_de_0_grados()} 
				return true }
	}
	
	method efectoDeNavegacion(){
		
		tempanos.forEach({tempano => tempano.aumentarPeso(1) tempano.cambiarAAireadoSiEsGrande(tempano)})
		
		
	}
}

class Rio inherits MasaDeAgua {
	var velocidadBase

	constructor(velocidad, tempanos) = super ( tempanos ) {
		velocidadBase = velocidad
	}

	method velocidad() {
		return velocidadBase - self.cantidadTempanosGrandes()

	}

	override method temperatura() {
		return super() + self.velocidad()
	}
	
	override method puedeNavegar(embarcacion){
		
		if(self.velocidad() >= embarcacion.fuerza()){throw new No_puede_navegar_porque_la_velocidad_del_rio_es_mayor_a_la_fuerza_de_la_embarcacion()}
		
		return true
	}
}

class No_puede_navegar_en_el_lago_porque_la_embarcacion_mide_10_metros_o_mas inherits Exception{}

class No_puede_navegar_en_el_lago_porque_este_esta_a_menos_de_0_grados inherits Exception{}

class No_puede_navegar_porque_la_velocidad_del_rio_es_mayor_a_la_fuerza_de_la_embarcacion inherits Exception{}