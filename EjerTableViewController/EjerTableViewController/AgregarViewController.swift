//
//  AgregarViewController.swift
//  EjerTableViewController
//
//  Created by Angel Trevino on 9/23/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

protocol protocolAgregarJugador {
    
    func agregaJugador(Jug: Jugador) -> Void
}

class AgregarViewController: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var delegado : protocolAgregarJugador!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGuardar(_ sender: UIButton) {
        
        if let nombre = tfNombre.text,
        let puntos = Int(tfPuntos.text!),
        let email = tfEmail.text {
        
        let nuevoJugador = Jugador(nombre: nombre, puntos: puntos, email: email, foto: nil)
        
        delegado.agregaJugador(Jug: nuevoJugador)
        navigationController?.popViewController(animated: true)
    }
    
        
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
