//
//  ViewController.swift
//  divisas
//
//  Created by Alumno on 8/15/19.
//  Copyright © 2019 Maggie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tfTipoDeCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDolares: UITextField!
    @IBOutlet weak var imgLogo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgLogo.image = UIImage(named: "gato")
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
//
//        view.addGestureRecognizer(tap)
        
        
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }


    @IBAction func calculaDolares(_ sender: UIButton) {
        
        if let tipoCambio = Double(tfTipoDeCambio.text!),let pesos = Double(tfPesos.text!){
            let dolares = pesos/tipoCambio
            tfDolares.text = "\(dolares)"
        }
        else {
            let alerta = UIAlertController(title: "Error", message: "Los dcampos no tienen datos apropiados", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            present(alerta, animated: true, completion: nil)
        }
    }
    @IBAction func quitaTeclado(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
    }
}

