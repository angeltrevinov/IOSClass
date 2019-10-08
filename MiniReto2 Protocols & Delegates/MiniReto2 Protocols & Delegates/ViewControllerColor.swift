//
//  ViewControllerColor.swift
//  MiniReto2 Protocols & Delegates
//
//  Created by Angel Trevino on 10/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerColor: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var btnColor: UIButton!
    @IBOutlet weak var tfRed: UITextField!
    @IBOutlet weak var tfGreen: UITextField!
    @IBOutlet weak var tfBlue: UITextField!
    
    var colorNuevo: UIColor!
    
    //---------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        btnColor.isEnabled = false;
    }
    
    
    @IBAction func dataChange(_ sender: UITextField) {
        btnColor.isEnabled = true;
        
        if  let Red = Int(tfRed.text!) ,
            let Green = Int(tfGreen.text!),
            let Blue = Int(tfBlue.text!) {
            
            print(Red, Green, Blue)
        
            self.viewColor.backgroundColor =  UIColor(
                           red: CGFloat(Red) / 255,
                           green: CGFloat(Green) / 255,
                           blue: CGFloat(Blue) / 255,
                           alpha:  CGFloat(1.0)
                       )
            
        }

    }
    
    //--------------------------------------------------------------
    @IBAction func removeKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //--------------------------------------------------------------
    @IBAction func agregarColor(_ sender: UIButton) {
        colorNuevo = self.viewColor.backgroundColor
        
    }
    

    // MARK: - Navigation
    //---------------------------------------------------------------
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaNuevaCategoria = segue.destination as! ViewController
        vistaNuevaCategoria.agregarColor = colorNuevo
    }

}
