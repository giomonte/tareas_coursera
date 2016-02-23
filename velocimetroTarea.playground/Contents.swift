//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial :  Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init(velocidad : Velocidades){
        self.velocidad = .Apagado
    }
    
    func cambioVelocidad() -> (actual : Int , velocidadEnCadena: String ){
        
        switch velocidad{
        case .Apagado:
            let resultado = (velocidad.rawValue, "Apagado")
            velocidad = Velocidades(velocidadInicial: .VelocidadBaja)
            return resultado
        case .VelocidadBaja:
            let resultado = (velocidad.rawValue, "VelocidadBaja")
            velocidad = Velocidades(velocidadInicial: .VelocidadMedia)
            return resultado
        case .VelocidadMedia:
            let resultado = (velocidad.rawValue, "VelocidadMedia")
            velocidad = Velocidades(velocidadInicial: .VelocidadAlta)
            return resultado
        case .VelocidadAlta:
            let resultado = (velocidad.rawValue, "VelocidadAlta")
            velocidad = Velocidades(velocidadInicial: .VelocidadMedia)
            return resultado
        default:
            return (0,"")
        }
    }
}

var auto = Auto(velocidad: .Apagado)

for i in 1...20{
    let result = auto.cambioVelocidad()
    print("\(i).\(result.actual), \(result.velocidadEnCadena)")
}


