//
//  ViewControllerPrisma.swift
//  cuerposGeomA19
//
//  Created by Angel Trevino on 8/26/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerPrisma: UIViewController {

    @IBOutlet weak var imgPrisma: UIImageView!
    @IBOutlet weak var tfLargo: UITextField!
    @IBOutlet weak var tfAncho: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    
    var imgToSend: UIImage!
    var dLargo: Double = 0
    var dAncho: Double = 0
    var dAltura: Double = 0
    var dVolumen: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btGuardar(_ sender: UIButton) {
        
        if let largo = Double(tfLargo.text!),
           let ancho = Double(tfAncho.text!),
           let altura = Double(tfAncho.text!) {
            dVolumen = largo * ancho * altura;
            dLargo = largo;
            dAncho = ancho;
            dAltura = altura;
            imgToSend = imgPrisma.image!
        }
        
    }
    
    @IBAction func btCancelar(_ sender: UIButton) {
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
