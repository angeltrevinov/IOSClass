//
//  ViewControllerPopUp.swift
//  PopView
//
//  Created by Angel Trevino on 17/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerPopUp: UIViewController {

    @IBOutlet weak var lbMessegeToSend: UITextField!
    var MessegeToEdit: String = ""
    
    //------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        preferredContentSize = CGSize(
            width: 250,
            height: 200
        )
        lbMessegeToSend.text = MessegeToEdit
    }
    
    // MARK: - Navigation
    //------------------------------------------------------
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        let vista = presentingViewController as! ViewController
        vista.Message = lbMessegeToSend.text!
    }
    
    //------------------------------------------------------
    @IBAction func popoverPresentationControllerDidDismissPopover(
        popoverPresentationController: UIPopoverPresentationController
    ) {
        let vista1 = presentingViewController as! ViewController
        vista1.Message = lbMessegeToSend.text!
        vista1.actualizarDato()
        dismiss(animated: true, completion: nil)
    }

}
