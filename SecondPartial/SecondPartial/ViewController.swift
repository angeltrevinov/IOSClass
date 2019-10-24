//
//  ViewController.swift
//  SecondPartial
//
//  Created by Angel Trevino on 21/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

protocol administrarNumeros {
    func agregarNumero(numero: Int) -> Void
}

class ViewController: UIViewController {
    
    @IBOutlet weak var lbDisplayNumber: UILabel!
    var numberRecieve: Int!
    
    var delegado: administrarNumeros!

    override func viewDidLoad() {
        super.viewDidLoad()
        lbDisplayNumber.text = "\(numberRecieve!)"
    }

    @IBAction func agregarNumero(_ sender: UIButton) {
        let nuevoNumero = numberRecieve + 1;
        delegado.agregarNumero(numero: nuevoNumero)
    }
    
    
}

