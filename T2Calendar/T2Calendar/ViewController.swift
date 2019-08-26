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
    @IBAction func changeDate(
        //Function than changes the date depending on the gesture
        //      you neewd two gesture recognizers for each direction
        _ sender: UISwipeGestureRecognizer
        ) {
        if (sender.direction == .left) {
            dateWeAre = dateWeAre.addingTimeInterval(86400);
            _dateStrToLabels();
        } else if (sender.direction == .right) {
            dateWeAre = dateWeAre.addingTimeInterval(-86400);
            _dateStrToLabels();
        }
    }
    
    //------------------------------------------------------------------
    @IBAction func goToToday(
        //Method that returns the date to todays date
        //      no validators for now
        _ sender: UIButton) {
        dateWeAre = Date();
        _dateStrToLabels();
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

