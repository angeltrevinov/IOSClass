//
//  ViewController.swift
//  T2Calendar
//
//  Created by Angel Trevino on 8/24/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Labels used in the view
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbMonth: UILabel!
    @IBOutlet weak var lbNumberDay: UILabel!
    @IBOutlet weak var lbDay: UILabel!
    
    //The date and a date formatter
    var dateWeAre: Date = Date();
    var format: DateFormatter = DateFormatter();
    
    //-------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _dateStrToLabels();
    }
    
    //-------------------------------------------------------------------
    @IBAction func changeDate(_
        //Function than changes the date depending on the gesture
        //      you neewd two gesture recognizers for each direction
        sender: UISwipeGestureRecognizer
        ) {
        if (sender.direction == .left) {
            print("left swipe made")
            dateWeAre = dateWeAre.addingTimeInterval(86400);
            _dateStrToLabels();
        } else if sender.direction == .right {
            print("right swipe made")
            dateWeAre = dateWeAre.addingTimeInterval(-86400);
            _dateStrToLabels();
        }
    }
    
    //------------------------------------------------------------------
    func _dateStrToLabels(
        //Method that helps us put the date in our labels
        ) {
        format.dateFormat = "yyyy";
        lbYear.text = format.string(from: dateWeAre);
        format.dateFormat = "MMMM";
        lbMonth.text = format.string(from: dateWeAre);
        format.dateFormat = "dd";
        lbNumberDay.text = format.string(from: dateWeAre);
        format.dateFormat = "EEEE";
        lbDay.text = format.string(from: dateWeAre);
    }


}

