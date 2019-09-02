//
//  ViewControllerLabel.swift
//  TableView
//
//  Created by Angel Trevino on 9/2/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerLabel: UIViewController {

    @IBOutlet weak var lbLabel: UILabel!
    
    var datoMostrar: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "User's details"
        
        lbLabel.text = datoMostrar!

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
