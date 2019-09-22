//
//  Empleado.swift
//  Tarea4
//
//  Created by Angel Trevino on 9/21/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class Empleado: NSObject {
    
    var Nombre: String!
    var Sueldo: Float!
    var Foto: UIImage!
    var Departamento: String!
    
    init(nombre: String, sueldo: Float, foto: UIImage, departamento: String) {
        self.Nombre = nombre
        self.Sueldo = sueldo
        self.Foto = foto
        self.Departamento = departamento
    }

}
