//
//  ViewController.swift
//  Tarea_3
//
//  Created by Angel Trevino on 9/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgToDisplay: UIImageView!
    @IBOutlet var viewHomeScreen: UIView!
    @IBOutlet weak var lbMessageToDisplay: UILabel!
    
    var imgImageRecieve: UIImage!
    var colorToSet: UIColor!
    var strMessageRecieved: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //----------------------------------------------------------
    @IBAction func unwindImg(
        //Method to do actions if we came back from immage
        unwindSegue: UIStoryboardSegue
        ) {
        imgToDisplay.image = imgImageRecieve
    }
    
    //-----------------------------------------------------------
    @IBAction func unwindColor(
        //Method to do actions if we came back from colors
        unwindSegue: UIStoryboardSegue
        ) {
        viewHomeScreen.backgroundColor = colorToSet!
    }
    
    //------------------------------------------------------------
    @IBAction func unwindMessage(unwindSegue: UIStoryboardSegue) {
        lbMessageToDisplay.text = strMessageRecieved
        
    }


}

