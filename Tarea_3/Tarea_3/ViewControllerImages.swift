//
//  ViewControllerImages.swift
//  Tarea_3
//
//  Created by Angel Trevino on 9/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewControllerImages: UIViewController {
    
    var imgToSend: UIImage!
    
    //----------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //----------------------------------------------------------------
    @IBAction func imgToSend(
        //Method to store the image selected
        _ sender: UIButton
        ) {
        imgToSend = sender.image(for: .normal)!
    }
    
    // MARK: - Navigation
    //----------------------------------------------------------------
    override func prepare(
        //Method method that prepares the data to be sent back
        for segue: UIStoryboardSegue, sender: Any?
        ) {
        
        let viewHome = segue.destination as! ViewController
        viewHome.imgImageRecieve = imgToSend;

    }

}
