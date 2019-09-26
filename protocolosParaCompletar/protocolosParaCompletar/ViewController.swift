//
//  ViewController.swift
//  protocolosParaCompletar
//
//  Created by Yolanda Martinez on 2/22/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var lbNombreAct: UILabel!
    @IBOutlet weak var lbCalificacion: UILabel!
    @IBOutlet weak var textViewComentarios: UITextView!
    
    var inputActividad: Actividad!
    var delegado: protocolAgregarActividad!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbNombreAct.text = inputActividad.nombreAct
        lbCalificacion.text = "\(inputActividad.calif)"
        textViewComentarios.text = "\(inputActividad.coment)"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   // MARK: - Navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let vistaCalificar = segue.destination as! ViewControllerEditar
    vistaCalificar.actividad = inputActividad
    vistaCalificar.delegado = delegado
    
    }


}

