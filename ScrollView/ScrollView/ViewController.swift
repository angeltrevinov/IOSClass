//
//  ViewController.swift
//  ScrollView
//
//  Created by Angel Trevino on 17/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var vista: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = vista.frame.size
    }


}

