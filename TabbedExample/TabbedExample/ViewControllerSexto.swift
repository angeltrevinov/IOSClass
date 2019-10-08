//
//  ViewControllerSexto.swift
//  TabbedExample
//
//  Created by Angel Trevino on 10/7/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerSexto: UIViewController {

    @IBOutlet weak var tfLogin: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navCont = segue.destination as! UINavigationController
        
        let tabCont = navCont.topViewController as! TableViewControllerCuarto
        tabCont.datoLogin = tfLogin.text
    }

}
