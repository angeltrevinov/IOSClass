//
//  ViewController.swift
//  storyboardE18
//
//  Created by Yolanda Martinez on 1/24/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    var nombre : String!
    var email : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindInformation(unwindSegue: UIStoryboardSegue){
        // Este metodo esta vacio
        // Solo funciona para regresar a la vista inicial
    }
    
    @IBAction func unwindEditar(unwindSegue: UIStoryboardSegue){
        // Falta completar
        tfNombre.text = nombre!
        tfEmail.text = email!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "info"{
            let vistaInfo = segue.destination as! ViewControllerInformationViewController
            vistaInfo.imagen = imgFoto.image
            vistaInfo.ancho = imgFoto.frame.size.width
            vistaInfo.altura = imgFoto.frame.size.height
        }
        else{
            let vistaEditor = segue.destination as! ViewControllerEditar
            vistaEditor.nombre = tfNombre.text!
            vistaEditor.email = tfEmail.text!
        }
        
    }
}

