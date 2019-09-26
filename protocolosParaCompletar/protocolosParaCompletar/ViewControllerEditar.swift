//
//  ViewControllerEditar.swift
//  protocolosParaCompletar
//
//  Created by Angel Trevino on 9/26/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

protocol protocolAgregarActividad {
    func agregaActividad(act: Actividad) -> Void
}

class ViewControllerEditar: UIViewController {

    @IBOutlet weak var lbActividad: UILabel!
    @IBOutlet weak var textViewCommentario: UITextView!
    @IBOutlet weak var tfCalificacion: UITextField!
    
    var actividad: Actividad!
    
    var delegado: protocolAgregarActividad!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbActividad.text = actividad.nombreAct
        tfCalificacion.text = "\(actividad.calif)"
        textViewCommentario.text = actividad.coment

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGuardar(_ sender: UIButton) {
        actividad.calif = Int(tfCalificacion.text!)!
        actividad.coment = textViewCommentario.text
        
        delegado.agregaActividad(act: actividad)
        navigationController?.popToRootViewController(animated: true)

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
