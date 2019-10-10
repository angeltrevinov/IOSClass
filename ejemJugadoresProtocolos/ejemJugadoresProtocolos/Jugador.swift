//
//  Jugador.swift
//  ejemJugadoresProtocolos
//
//  Created by Yolanda Martinez on 10/9/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class Jugador: Codable {

    var nombre : String = ""
    var puntos : Int = 0
    var email : String = ""    
    
    init(nombre : String, puntos : Int, email : String) {
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
    }
    
    
}
