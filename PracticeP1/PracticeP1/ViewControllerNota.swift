//
//  ViewControllerNota.swift
//  PracticeP1
//
//  Created by Angel Trevino on 9/18/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerNota: UIViewController {
    
    var desplegarNota: Note!
    var format: DateFormatter = DateFormatter();

    @IBOutlet weak var lbTitulo: UILabel!
    @IBOutlet weak var imgImageToDisplay: UIImageView!
    @IBOutlet weak var lbDesc: UILabel!
    @IBOutlet weak var lbDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgImageToDisplay.image = desplegarNota.imgImage
        lbTitulo.text = desplegarNota.strTitulo
        lbDesc.text = desplegarNota.strDesc
        
        format.dateFormat = "dd/MM/yyyy"
        lbDate.text = format.string(from: desplegarNota.creation)
        
        
        

        // Do any additional setup after loading the view.
    }
    
}
