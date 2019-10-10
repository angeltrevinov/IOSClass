//
//  Empleado.swift
//  persistenciaCodableParte1A19
//
//  Created by Yolanda Martinez on 10/8/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class Empleado: Codable {
    
    var nombre : String
    var ident : Int
    
        
    init(nombre : String, ident : Int) {
        self.nombre = nombre
        self.ident = ident
    }
}
