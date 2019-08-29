//
//  ViewControllerEsfera.swift
//  cuerposGeomA19
//
//  Created by Angel Trevino on 8/26/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEsfera: UIViewController {

    @IBOutlet weak var tfRadioEsfera: UITextField!
    @IBOutlet weak var imgEsfera: UIImageView!
    
    var dRadio: Double  = 0.0;
    var dVolumen: Double = 0.0;
    var imgToPass: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btGuardar(_ sender: Any) {
        if let radio = Double(tfRadioEsfera.text!) {
            dRadio = radio;
            dVolumen = (4.0/3.0) * 3.14 * pow(3.0, dRadio)
        }
        imgToPass = imgEsfera.image
    }
    
    @IBAction func btCancelar(_ sender: UIButton) {
        imgToPass = nil;
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var strRadioText = ""
        var strVolText = ""
        if (dRadio != 0) {
            strRadioText = "Radio: " +  "\(dRadio)"
        }
        
        if(dVolumen != 0) {
            strVolText = "Volumen: " +  "\(dVolumen)"
        }
        
        let vistaHome = segue.destination as! ViewController
        vistaHome.lbFHome.text = strRadioText
        vistaHome.lbSHome.text = strVolText
        vistaHome.imgFigureHome.image = imgToPass;
    }

}
