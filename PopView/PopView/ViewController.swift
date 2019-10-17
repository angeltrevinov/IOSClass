//
//  ViewController.swift
//  PopView
//
//  Created by Angel Trevino on 17/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
        UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var lbMessage: UILabel!
    var Message: String = "";
    
    //------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = Message
    }
    
    func adaptivePresentationStyle(
           for controller: UIPresentationController
       ) -> UIModalPresentationStyle {
           return .none
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaPopOver = segue.destination as! ViewControllerPopUp
        vistaPopOver.popoverPresentationController?.delegate = self
        vistaPopOver.MessegeToEdit = lbMessage.text!
    }
    
    func actualizarDato() {
        lbMessage.text = Message
    }
    

}

