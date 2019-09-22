//
//  Note.swift
//  PracticeP1
//
//  Created by Angel Trevino on 9/18/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class Note: NSObject {
    
    var strTitulo: String = ""
    var strDesc: String = ""
    var creation: Date!
    var imgImage: UIImage!
    
    init(strTitulo: String, strDesc: String, creation: Date, imgImage: UIImage) {
        
        self.strTitulo = strTitulo
        self.strDesc = strDesc
        self.creation = creation
        self.imgImage = imgImage
    }

}
