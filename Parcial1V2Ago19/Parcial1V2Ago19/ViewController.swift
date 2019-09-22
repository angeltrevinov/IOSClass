//
//  ViewController.swift
//  Parcial1V2Ago19
//
//  Created by Angel Trevino on 9/19/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sumNumber: Int = 0;
    var imgToDisplay: UIImage!
    var dResult: Double!
    
    @IBOutlet weak var lbNumber: UILabel!
    @IBOutlet weak var imgImageDisplaying: UIImageView!
    @IBOutlet weak var lbUserInput: UITextField!
    @IBOutlet weak var lbResult: UITextField!
    @IBOutlet weak var swWhatToCalculate: UISwitch!
    @IBOutlet weak var imgLapiz: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Animations
    @IBAction func makeBigger(_ sender: UIButton) {
        UIView.animate(withDuration: 3, animations: {
            self.imgLapiz.frame.size.width = self.imgLapiz.frame.size.width + CGFloat(50)
            
            self.imgLapiz.frame.size.height = self.imgLapiz.frame.size.height + CGFloat(50)
        })
    }
    
    @IBAction func makeSmaller(_ sender: UIButton) {
        UIView.animate(withDuration: 3, animations: {
            self.imgLapiz.frame.size.width = self.imgLapiz.frame.size.width - CGFloat(50)
            
            self.imgLapiz.frame.size.height = self.imgLapiz.frame.size.height - CGFloat(50)
        })
    }
    
    // MARK: - Swipe
    @IBAction func incrementNumber(_ sender: UISwipeGestureRecognizer) {
        
        if(sender.direction == .left) {
            sumNumber = sumNumber - 1;
        } else if(sender.direction == .right) {
            sumNumber = sumNumber + 1;
        }
        
        lbNumber.text = "\(sumNumber)";
    }
    
    // MARK: - Green Card
    @IBAction func calculateCubeOrSquare(_ sender: UIButton) {
        
        if let dDato = Double(lbUserInput.text!) {
            
            //calculate cube
            if(swWhatToCalculate.isOn) {
                dResult = pow(dDato, 3)
            } else {
                dResult = dDato * dDato
            }
            
            lbResult.text = "\(dResult!)"
        
        } else {
            let alert = UIAlertController(
                title: "Error",
                message: "Por favor llena todos los campos correspondientes",
                preferredStyle: .alert
            )
            
            let action = UIAlertAction(
                title: "OK",
                style: .cancel,
                handler: nil
            )
            
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    //MARK: - unwind
    @IBAction func unwindEsfera(unwindSegue: UIStoryboardSegue){
        imgImageDisplaying.image = imgToDisplay
    }
    
}

