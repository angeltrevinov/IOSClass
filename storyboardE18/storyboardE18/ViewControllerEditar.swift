//
//  ViewControllerEditar.swift
//  storyboardE18
//
//  Created by Angel Trevino on 8/22/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEditar: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btnGuardar: UIButton!
    
    var nombre: String!
    var email: String!
    
    //-------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfNombre.text = nombre!
        tfEmail.text = email!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ((sender as! UIButton) == btnGuardar) {
            let vistaInic = segue.destination as! ViewController
            vistaInic.nombre = tfNombre.text!
            vistaInic.email = tfEmail.text!
        }
    }
    
}
