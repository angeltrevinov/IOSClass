//
//  ViewControllerColor.swift
//  Tarea_3
//
//  Created by Angel Trevino on 9/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerColor: UIViewController {
    
    var color: UIColor!

    //--------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //------------------------------------------------------
    @IBAction func colorSelected(
        //Method that stores the color selected
        _ sender: UIButton
        ) {
        
        color = sender.backgroundColor!
    }
    
    
    // MARK: - Navigation
    //---------------------------------------------------------
    override func prepare(
        //Prepare to return data 
        for segue: UIStoryboardSegue, sender: Any?
        ) {
        
        let viewHome = segue.destination as! ViewController
        viewHome.colorToSet = color!
    }

}
