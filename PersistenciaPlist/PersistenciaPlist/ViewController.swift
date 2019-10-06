//
//  ViewController.swift
//  PersistenciaPlist
//
//  Created by Angel Trevino on 9/30/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDato1: UITextField!
    @IBOutlet weak var tfDato2: UITextField!
    @IBOutlet weak var tfDato3: UITextField!
    @IBOutlet weak var tfDato4: UITextField!
    
    //------------------------------------------------------------
    func dataFilePath() -> String {
        
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let pathArchivo = url.appendingPathComponent("dataFile.plist")
        
        return pathArchivo.path
    }
    
    //-----------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(aplicacionSeVaAlBackground(notification:)),
            name: UIApplication.didEnterBackgroundNotification,
            object: app
        )
        
        let ruta = dataFilePath()
        if FileManager.default.fileExists(atPath: ruta) {
            let arreglo = NSArray(contentsOfFile: ruta)!
            tfDato1.text = arreglo[0] as? String
            tfDato2.text = arreglo[1] as? String
            tfDato3.text = arreglo[2] as? String
            tfDato4.text = arreglo[3] as? String
        }
    }
    
    //------------------------------------------------------------
    @IBAction func aplicacionSeVaAlBackground(notification: NSNotification) {
        
        let arreglo: NSMutableArray = [];
        arreglo.add(tfDato1.text!)
        arreglo.add(tfDato2.text!)
        arreglo.add(tfDato3.text!)
        arreglo.add(tfDato4.text!)
        
        arreglo.write(toFile: dataFilePath(), atomically: true)
    }


}

