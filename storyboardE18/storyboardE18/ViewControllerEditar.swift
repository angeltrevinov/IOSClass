//
//  ViewControllerEditar.swift
//  storyboardE18
//
//  Created by Alumno on 8/22/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEditar: UIViewController {
    
    
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btGuardar: UIButton!
    var nombre : String!
    var email : String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfNombre.text = nombre!
        tfEmail.text = email!

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender as! UIButton == btGuardar{
            let vistaInic = segue.destination as! ViewController
            vistaInic.nombre = tfNombre.text!
            vistaInic.email = tfEmail.text!
        }
        // Si le da CANCELAR no regresa nada
    }

}
