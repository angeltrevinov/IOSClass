//
//  ViewController.swift
//  Closures
//
//  Created by Angel Trevino on 24/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfUno: UITextField!
    @IBOutlet weak var tfNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        agregarCampo()
        agregarButton()
    }

    @IBAction func pedirDatos(_ sender: UIButton) {
        var identTextField: UITextField?
        var nameTextField: UITextField?
        
        let alert = UIAlertController(
            title: "Titulo de Alerta",
            message: "Todos los datos",
            preferredStyle: .alert
        );
        
        let accionDatos = UIAlertAction(
            title: "OK",
            style: .default) { (accion) -> Void in
                //Dato en el ident
                if let ident = identTextField?.text {
                    if let ide = Int(ident) {
                        self.tfUno.text = "\(ide)"
                    } else {
                        print("no es numero")
                    }
                } else {
                    print("no hay datos");
                }
                
                if let name = nameTextField?.text {
                    self.tfNombre.text = name
                } else {
                    print("no hay dato")
                }
        }
        
        alert.addTextField { (txtIdent) -> Void in
            identTextField = txtIdent
            identTextField?.placeholder = "<teclea el id>"
        }
        
        alert.addTextField { (txtUserName) -> Void in
            nameTextField = txtUserName
            nameTextField?.placeholder = "<teclea el nombre>"
        }
        
        alert.addAction(accionDatos)
        
        let accionCancel = UIAlertAction(
            title: "Cancel",
            style: .cancel) { (cancel) in
                print(cancel)
        }
        
        alert.addAction(accionCancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    func agregarCampo() {
        let campo = UITextField(frame: CGRect(x: 50, y: 200, width: 150, height: 50))
        
        campo.placeholder = "teclea"
        view.addSubview(campo)
    }
    
    func agregarButton() {
        let boton = UIButton(type: .system)
        boton.frame = CGRect(x: 60, y: 350, width: 120, height: 50)
        boton.backgroundColor = UIColor.blue.withAlphaComponent(0.3)
        boton.setTitle("Boton Creado", for: .normal)
        boton.addTarget(self, action: #selector(oprimirBoton), for: .touchUpInside)
        
        view.addSubview(boton)
    }
    
    @IBAction func oprimirBoton() {
        print("oprimir boton")
    }
    
}

