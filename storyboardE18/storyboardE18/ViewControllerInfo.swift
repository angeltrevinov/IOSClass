//
//  ViewControllerInfo.swift
//  storyboardE18
//
//  Created by Angel Trevino on 8/22/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController {

    @IBOutlet weak var imgDonald: UIImageView!
    @IBOutlet weak var lbAncho: UILabel!
    @IBOutlet weak var lbAltura: UILabel!
    
    var imgImagen: UIImage!
    var ancho: CGFloat!
    var altura: CGFloat!
    
    //----------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgDonald.image = imgImagen
        lbAncho.text = String(describing: ancho!)
        lbAltura.text = String(describing: altura!)
    }

}
