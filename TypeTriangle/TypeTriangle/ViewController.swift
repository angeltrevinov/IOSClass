//
//  ViewController.swift
//  TypeTriangle
//
//  Created by Angel Trevino on 8/17/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //TextFields
    @IBOutlet weak var tfBase: UITextField!
    @IBOutlet weak var tfLadoIzq: UITextField!
    @IBOutlet weak var tfLadoDrc: UITextField!
    //Action values
    @IBOutlet weak var btnCalcular: UIButton!
    @IBOutlet weak var swAreaOrType: UISwitch!
    //Label
    @IBOutlet weak var lbMessage: UILabel!
    //Img
    @IBOutlet weak var imgTypeTriangle: UIImageView!
    
    //---------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbMessage.text = ""
        imgTypeTriangle.image = UIImage(named: "")
    }
    
    //--------------------------------------
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //-------------------------------------
    @IBAction func swEscogerCalculo(
        //Depending on the switch value, change what the button says
        _ sender: UISwitch
        ) {
        lbMessage.text = ""
        imgTypeTriangle.image = UIImage(named: "")
        if(sender.isOn) {
            btnCalcular.setTitle("Calcular Tipo", for: .normal)
        } else {
            btnCalcular.setTitle("Calcular Area", for: .normal)
        }
    }
    
    //--------------------------------------
    @IBAction func onButtonPressed(
        //When button is pressed, calculate the area or the type of the triangle, depending on what the user wants
        _ sender: UIButton
        ) {
        
        //check if the values are not empty
        if let dBase = Double(tfBase.text!),
           let dLadoIzq = Double(tfLadoIzq.text!),
           let dLadoDrc = Double(tfLadoDrc.text!) {
            
            if(
                _checkTriangle(
                    dBase: dBase,
                    dLadoIzq: dLadoIzq,
                    dLadoDrc: dLadoDrc
            )) {
                
                if(swAreaOrType.isOn) {
                    _calculateTypeTriangle(
                        dBase: dBase,
                        dLadoIzq: dLadoIzq,
                        dLadoDrc: dLadoDrc
                    )
                } else {
                    _calculateAreaTriangle(
                        dBase: dBase,
                        dLadoIzq: dLadoIzq,
                        dLadoDrc: dLadoDrc
                    )
                }
                
            }
            
        } else {
                
                let alert = UIAlertController(
                    title: "Error",
                    message: "Por favor llena todos los campos correspondientes",
                    preferredStyle: .alert
                )
                
                let action = UIAlertAction(
                    title: "OK",
                    style: .cancel,
                    handler: nil
                )
                
                alert.addAction(action)
                
                present(alert, animated: true, completion: nil)
        }
    }
    
    //--------------------------------------------
    func _checkTriangle (
        //Check if the sizes represent a triangle and return a bool
        dBase: Double,
        dLadoIzq: Double,
        dLadoDrc: Double
        ) -> Bool {
        
        if(
            dBase <= 0 ||
            dLadoIzq <= 0 ||
            dLadoDrc <= 0 ||
            dBase + dLadoIzq <= dLadoDrc ||
            dBase + dLadoDrc <= dLadoIzq ||
            dLadoDrc + dLadoIzq <= dBase
            ) {
            
            let alert = UIAlertController(
                title: "Error",
                message: "Los numeros ingresados no representan un triangulo",
                preferredStyle: .alert
            )
            
            let action = UIAlertAction(
                title: "Ok",
                style: .cancel,
                handler: nil
            )
            
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
            
            return false;
        }
        return true;
    }
    
    //-------------------------------------------
    func _calculateTypeTriangle(
        //Calculates what type the triangle is
        dBase: Double,
        dLadoIzq: Double,
        dLadoDrc: Double
        ) {
        
        if( dBase == dLadoIzq && dLadoIzq == dLadoDrc ) {
            lbMessage.text = "Equilatero"
            imgTypeTriangle.image = UIImage(named: "equilatero")
        } else if(dBase == dLadoIzq || dBase == dLadoDrc || dLadoIzq == dLadoDrc){
            lbMessage.text = "Isoceles"
            imgTypeTriangle.image = UIImage(named: "isoceles")
        } else {
            lbMessage.text = "Escaleno"
            imgTypeTriangle.image = UIImage(named: "escaleno")

        }
        
    }
    
    //----------------------------------------------
    func _calculateAreaTriangle(
        //Calculates the Area of the triangle depending of each side
        dBase: Double,
        dLadoIzq: Double,
        dLadoDrc: Double
        ){
        
        let dS: Double, dArea: Double
        
        dS = (dBase + dLadoDrc + dLadoIzq) / 2
        dArea = (dS * (dS - dBase) * (dS - dLadoIzq) * (dS - dLadoDrc)).squareRoot()
        
        lbMessage.text = "El area es: " + "\(dArea)"
        
    }
}

