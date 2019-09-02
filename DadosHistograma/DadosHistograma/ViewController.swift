//
//  ViewController.swift
//  DadosHistograma
//
//  Created by Angel Trevino on 8/28/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Images for the dice
    @IBOutlet weak var imgFirstDice: UIImageView!
    @IBOutlet weak var imgSecondDice: UIImageView!
    
    //The Labels Count
    @IBOutlet weak var lb2Count: UILabel!
    @IBOutlet weak var lb3Count: UILabel!
    @IBOutlet weak var lb4Count: UILabel!
    @IBOutlet weak var lb5Count: UILabel!
    @IBOutlet weak var lb6Count: UILabel!
    @IBOutlet weak var lb7Count: UILabel!
    @IBOutlet weak var lb8Count: UILabel!
    @IBOutlet weak var lb9Count: UILabel!
    @IBOutlet weak var lb10Count: UILabel!
    @IBOutlet weak var lb11Count: UILabel!
    @IBOutlet weak var lb12Count: UILabel!
    
    //The Progres bars count
    @IBOutlet weak var pv2Count: UIProgressView!
    @IBOutlet weak var pv3Count: UIProgressView!
    @IBOutlet weak var pv4Count: UIProgressView!
    @IBOutlet weak var pv5Count: UIProgressView!
    @IBOutlet weak var pv6Count: UIProgressView!
    @IBOutlet weak var pv7Count: UIProgressView!
    @IBOutlet weak var pv8Count: UIProgressView!
    @IBOutlet weak var pv9Count: UIProgressView!
    @IBOutlet weak var pv10Count: UIProgressView!
    @IBOutlet weak var pv11Count: UIProgressView!
    @IBOutlet weak var pv12Count: UIProgressView!
    
    //ints and floats to store values
    var intFirstDice: Int = 0;
    var intSecondDice: Int = 0;
    var f2Counter: Float = 0;
    var f3Counter: Float = 0;
    var f4Counter: Float = 0;
    var f5Counter: Float = 0;
    var f6Counter: Float = 0;
    var f7Counter: Float = 0;
    var f8Counter: Float = 0;
    var f9Counter: Float = 0;
    var f10Counter: Float = 0;
    var f11Counter: Float = 0;
    var f12Counter: Float = 0;
    
    //----------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _setCountersOnScreen();
    }

    //----------------------------------------------------------
    @IBAction func tirarDados(
        //Method that activates to get knew values for the dices
        _ sender: UIButton
        ) {
        
        intFirstDice = Int.random(in: 1 ... 6);
        imgFirstDice.image = _setOneDiceImage(intNumber: intFirstDice);
        
        intSecondDice = Int.random(in: 1 ... 6);
        imgSecondDice.image = _setOneDiceImage(intNumber: intSecondDice);
        
        _addToCounters(intSumObtain: intFirstDice + intSecondDice);
        _setCountersOnScreen();
    }
    
    //----------------------------------------------------------
    func _setCountersOnScreen(
        //Method that helps us set the values of each counter on
        //      their respective label and progress bar
        ) {
        
        pv2Count.setProgress(f2Counter/0.50, animated: true);
        lb2Count.text = "\(Int(f2Counter*100))";
        
        pv3Count.setProgress(f3Counter/0.50, animated: true);
        lb3Count.text = "\(Int(f3Counter*100))";
        
        pv4Count.setProgress(f4Counter/0.50, animated: true);
        lb4Count.text = "\(Int(f4Counter*100))";
        
        pv5Count.setProgress(f5Counter/0.50, animated: true);
        lb5Count.text = "\(Int(f5Counter*100))";
        
        pv6Count.setProgress(f6Counter/0.50, animated: true);
        lb6Count.text = "\(Int(f6Counter*100))";
        
        pv7Count.setProgress(f7Counter/0.50, animated: true);
        lb7Count.text = "\(Int(f7Counter*100))";
        
        pv8Count.setProgress(f8Counter/0.50, animated: true);
        lb8Count.text = "\(Int(f8Counter*100))";
        
        pv9Count.setProgress(f9Counter/0.50, animated: true);
        lb9Count.text = "\(Int(f9Counter*100))";
        
        pv10Count.setProgress(f10Counter/0.50, animated: true);
        lb10Count.text = "\(Int(f10Counter*100))";
        
        pv11Count.setProgress(f11Counter/0.50, animated: true);
        lb11Count.text = "\(Int(f11Counter*100))";
        
        pv12Count.setProgress(f12Counter/0.50, animated: true);
        lb12Count.text = "\(Int(f12Counter*100))";
    }
    
    //----------------------------------------------------------
    func _setOneDiceImage(
        //Method that returns the Image to be displayed on a dice
        //      Recieves the integer the dice needs to display
        intNumber: Int
        ) -> UIImage {
    
        var imgToReturn: UIImage;
        
        switch intNumber {
        case 1:
            imgToReturn = UIImage(named: "dado1")!
        case 2:
            imgToReturn = UIImage(named: "dado2")!
        case 3:
            imgToReturn = UIImage(named: "dado3")!
        case 4:
            imgToReturn = UIImage(named: "dado4")!
        case 5:
            imgToReturn = UIImage(named: "dado5")!
        case 6:
            imgToReturn = UIImage(named: "dado6")!
        default:
            imgToReturn = UIImage(named: "")!
        }
        
        return imgToReturn;
    }
    
    //-----------------------------------------------------------------
    func _addToCounters(
        //Method that adds to the counter depending on the
        //      sum of the dices
        intSumObtain: Int
        ) {
        
        switch intSumObtain {
        case 2:
            f2Counter = f2Counter + 0.01;
        case 3:
            f3Counter = f3Counter + 0.01;
        case 4:
            f4Counter = f4Counter + 0.01;
        case 5:
            f5Counter = f5Counter + 0.01;
        case 6:
            f6Counter = f6Counter + 0.01;
        case 7:
            f7Counter = f7Counter + 0.01;
        case 8:
            f8Counter = f8Counter + 0.01;
        case 9:
            f9Counter = f9Counter + 0.01;
        case 10:
            f10Counter = f10Counter + 0.01;
        case 11:
            f11Counter = f11Counter + 0.01;
        case 12:
            f12Counter = f12Counter + 0.01;
        default: break
            /*nothing happens*/
        }
    }
}

