//
//  Categoria.swift
//  MiniReto2 Protocols & Delegates
//
//  Created by Angel Trevino on 10/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class Categoria: NSObject {
    
    var strTitulo: String = ""
    var uiColor: UIColor!
    
    //------------------------------------------------------------------------
    init(strTitulo: String, uiColor: UIColor) {
        self.strTitulo = strTitulo;
        self.uiColor = uiColor;
    }
    
}
