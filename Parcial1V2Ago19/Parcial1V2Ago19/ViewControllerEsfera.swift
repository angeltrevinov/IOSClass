//
//  ViewControllerEsfera.swift
//  Parcial1V2Ago19
//
//  Created by Angel Trevino on 9/19/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEsfera: UIViewController {

    @IBOutlet weak var imgMorada: UIImageView!
    @IBOutlet weak var imgAqua: UIImageView!
    
    var imgImageChosed: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func chooseMorada(_ sender: UIButton) {
        
        imgImageChosed = imgMorada.image
    }
    
    @IBAction func chooseAqua(_ sender: UIButton) {
        
        imgImageChosed = imgAqua.image
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let vistaHome = segue.destination as! ViewController
        
        vistaHome.imgToDisplay = imgImageChosed
    }

}
