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
        imgToSend = imgPrisma.image;
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var strLargo = "";
        var strAncho = "";
        var strAltura = "";
        var strVolumen = "";
        
        if(dLargo != 0 && dAncho != 0 && dAltura != 0 && dVolumen != 0) {
            strLargo = "Largo: " + "\(dLargo)";
            strAncho = "Ancho: " + "\(dAncho)";
            strAltura = "Altura: " + "\(dAltura)";
            
            strVolumen = "Volumen: " + "\(dVolumen)";
        }
        
        let vistaHome = segue.destination as! ViewController;
        vistaHome.lbFHome.text = strLargo + " " + strAncho +  " " + strAltura;
        vistaHome.lbFHome.numberOfLines = 3;
        vistaHome.lbFHome.lineBreakMode = .byTruncatingHead
        vistaHome.lbSHome.text = strVolumen;
        vistaHome.imgFigureHome.image = imgToSend;
    }

}
