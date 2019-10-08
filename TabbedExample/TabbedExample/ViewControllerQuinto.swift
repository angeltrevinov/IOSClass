//
//  ViewControllerQuinto.swift
//  TabbedExample
//
//  Created by Angel Trevino on 10/7/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerQuinto: UIViewController {

    @IBOutlet weak var lbDato: UILabel!
    
    var datoMostrar: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbDato.text = datoMostrar
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
