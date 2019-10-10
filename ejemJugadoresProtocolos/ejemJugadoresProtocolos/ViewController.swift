//
//  ViewController.swift
//  ejemJugadoresProtocolos
//
//  Created by Yolanda Martinez on 10/9/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

protocol protocoloAgregarJugador {
    func agregaJugador(jug : Jugador) -> Void
}

class ViewController: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var delegado : protocoloAgregarJugador!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Agregar Jugador"
    }

    @IBAction func guardarJugador(_ sender: UIButton) {
        if  let nom = tfNombre.text,
            let punt = Int(tfPuntos.text!),
            let ema = tfEmail.text {
            
            let unJugador = Jugador(nombre: nom, puntos: punt, email: ema)
        
            delegado.agregaJugador(jug: unJugador)
            navigationController?.popViewController(animated: true)
        }
    }
    
}

