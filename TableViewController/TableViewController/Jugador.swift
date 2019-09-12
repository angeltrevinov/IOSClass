//
//  Jugador.swift
//  TableViewController
//
//  Created by Angel Trevino on 9/12/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre: String = ""
    var puntos: Int = 0
    var email: String = ""
    var imgImage: UIImage!
    
    init(nombre: String, puntos: Int, email: String, imgImage: UIImage) {
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
        self.imgImage = imgImage
    }

}
