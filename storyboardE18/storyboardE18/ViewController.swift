//
//  ViewController.swift
//  storyboardE18
//
//  Created by Yolanda Martinez on 1/24/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDonald: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var nombre: String!
    var email: String!
    
    //------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //-------------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //-------------------------------------
    @IBAction func unwindInformacion(unwindSegue: UIStoryboardSegue) {
        //vacio intencionalmente
        //solo sirve para regresar
    }
    
    //-------------------------------------
    @IBAction func unwindEditar(unwindSegue: UIStoryboardSegue) {
        tfNombre.text = nombre
        tfEmail.text = email
    }
    
    //-------------------------------------
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "info") {
            let vistaInfo = segue.destination as! ViewControllerInfo
            vistaInfo.imgImagen = imgDonald.image
            vistaInfo.ancho = imgDonald.frame.size.width
            vistaInfo.altura = imgDonald.frame.size.height
        } else if(segue.identifier == "editar") {
            let vistaEditar = segue.destination as! ViewControllerEditar
            vistaEditar.nombre = tfNombre.text!
            vistaEditar.email = tfEmail.text!
        }
     }
    



}

