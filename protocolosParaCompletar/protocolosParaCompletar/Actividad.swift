//
//  Actividad.swift
//  protocolosParaCompletar
//
//  Created by Yolanda Martinez on 2/22/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class Actividad: NSObject {

    
    var nombreAct : String
    var calif : Int
    var coment : String
    
    init(nombreAct: String, calif: Int, coment: String) {
        self.nombreAct = nombreAct
        self.calif = calif
        self.coment = coment
    }
    
    init(nombreAct: String) {
        self.nombreAct = nombreAct
        self.calif = 0
        self.coment = ""
    }
    
}
