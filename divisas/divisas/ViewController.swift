//
//  ViewController.swift
//  divisas
//
//  Created by Angel Trevino on 8/15/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTipoCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDolares: UITextField!
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgLogo.image = UIImage(named: "tumblr")
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
//
//        view.addGestureRecognizer(tap)
    }

    @IBAction func calculaDolares(_ sender: UIButton) {
        
        if let tipoCambio = Double(tfTipoCambio.text!),
           let pesos = Double(tfPesos.text!) {
            
            let dolares = pesos / tipoCambio
            tfDolares.text = "\(dolares)"
        } else {
            let alert = UIAlertController(title: "Error", message: "Por favor llena todos los campos correspondientes", preferredStyle: .alert)
            
            let accion = UIAlertAction( title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(accion)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
//    @IBAction func quitaTeclado() {
//        view.endEditing(true)
//    }
    
    @IBAction func quitaTeclado(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

