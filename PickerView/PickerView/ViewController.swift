//
//  ViewController.swift
//  PickerView
//
//  Created by Angel Trevino on 15/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController,
    UIPickerViewDataSource,
    UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    
    var listaImagenes: [UIImage] = [
            UIImage(named: "Apple")!,
            UIImage(named: "bar")!,
            UIImage(named: "cherry")!,
            UIImage(named: "crown")!,
            UIImage(named: "lemon")!,
            UIImage(named: "seven")!
    ]
    
    //------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //------------------------------------------------------
    @IBAction func onRoll(_ sender: UIButton) {
        for index in 0...2 {
            picker.selectRow(
                Int.random(in: 0..<listaImagenes.count),
                inComponent: index,
                animated: true
            )
        }
        
        let firstComponent: Int =
            picker.selectedRow(inComponent: 0);
        let secondComponent: Int =
            picker.selectedRow(inComponent: 1);
        let thirdComponent: Int =
            picker.selectedRow(inComponent: 2);
        
        if(
            firstComponent == secondComponent &&
            secondComponent == thirdComponent
            ){
            print(true)
        } else {
            print(false)
        }
    }
    
    //------------------------------------------------------
    @IBAction func onReset(_ sender: UIButton) {
        picker.reloadAllComponents()
        for index in 0...2 {
            picker.selectRow(
                0,
                inComponent: index,
                animated: true
            )
        }
    }
    
    //MARK: - PickerView Methods
    //------------------------------------------------------
    func numberOfComponents(
        in pickerView: UIPickerView
    ) -> Int {
        return 3;
    }
    
    //------------------------------------------------------
    func pickerView(
        _ pickerView: UIPickerView,
        numberOfRowsInComponent component: Int
    ) -> Int {
        return listaImagenes.count
    }
    
    //------------------------------------------------------
    func pickerView(
        _ pickerView: UIPickerView,
        rowHeightForComponent component: Int
    ) -> CGFloat {
        return CGFloat(100)
    }
    
    //------------------------------------------------------
    func pickerView(
        _ pickerView: UIPickerView,
        viewForRow row: Int,
        forComponent component: Int,
        reusing view: UIView?
    ) -> UIView {
        
        let myImageView = UIImageView(
            frame: CGRect(x: 0, y: 0, width: 50, height: 50)
        )
        myImageView.image = listaImagenes[row]
    
        return myImageView
    }

}

