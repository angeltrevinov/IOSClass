//
//  ViewControllerInformationViewController.swift
//  storyboardE18
//
//  Created by Alumno on 8/22/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInformationViewController: UIViewController {

    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbAncho: UILabel!
    @IBOutlet weak var lbAltura: UILabel!
    var imagen : UIImage!
    var ancho : CGFloat!
    var altura : CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgFoto.image = imagen
        lbAncho.text = String(describing: ancho!)
        lbAltura.text = String(describing: altura!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
