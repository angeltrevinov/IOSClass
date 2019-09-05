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
    @IBAction func imgToSend(_ sender: UIButton) {
        imgToSend = sender.image(for: .normal)!
    }
    
    // MARK: - Navigation
    //----------------------------------------------------------------
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewHome = segue.destination as! ViewController
        viewHome.imgImageRecieve = imgToSend;

    }

}
