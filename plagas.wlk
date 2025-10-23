class Plaga {
    var poblacion
    method transmiteEnfermedades() = poblacion >= 10
}

class Cucarachas inherits Plaga {
    const pesoPromedioBicho
    method nivelDeDanio() = poblacion * 0.5
    override method transmiteEnfermedades() {
        return super() && pesoPromedioBicho >= 10
    }
}

class Pulgas inherits Plaga {
    method nivelDeDanio() = poblacion * 2
}

class Garrapatas inherits Pulgas {  
}

class Mosquitos inherits Plaga {
    method nivelDeDanio() = poblacion
    override method transmiteEnfermedades() {
        return super() && poblacion % 3 == 0
    }
}