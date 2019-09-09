//
//  ViewControllerMessage.swift
//  Tarea_3
//
//  Created by Angel Trevino on 9/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerMessage: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //--------------------------------------------------------------
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    //----------------------------------------------------------------
    override func shouldPerformSegue(
        //Method that verifies data is correct, returns a bool
        withIdentifier identifier: String, sender: Any?
        ) -> Bool {
        
        if(tfMessage.text == "") {
            
            let alert = UIAlertController(
                title: "Error",
                message: "Por favor escribe un mensaje",
                preferredStyle: .alert
            )
            
            let action = UIAlertAction(
                title: "OK",
                style: .cancel,
                handler: nil
            )
            
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
            return false;
        }
        
        return true;
    }
    
    //--------------------------------------------------------------
    override func prepare(
        //Method that prepares the data to be sent
        for segue: UIStoryboardSegue, sender: Any?
        ) {
        
        let strMessage = tfMessage.text
        let viewHome = segue.destination as! ViewController
        viewHome.strMessageRecieved = strMessage
    }
    

}
