//
//  ViewController.swift
//  TableViewController
//
//  Created by Angel Trevino on 9/12/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jugar: Jugador!

    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lbUserName: UILabel!
    @IBOutlet weak var strPointsUser: UILabel!
    @IBOutlet weak var lbMail: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgImage.image = jugar.imgImage
        lbUserName.text = jugar.nombre
        strPointsUser.text = "\(jugar.puntos)"
        lbMail.text = jugar.email
    }


}

