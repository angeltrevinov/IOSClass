//
//  ViewController.swift
//  CargarDatosDeUnPlaylist
//
//  Created by Angel Trevino on 9/9/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UITableViewDataSource,
UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbCapacidad: UILabel!
    @IBOutlet weak var lbPrecio: UILabel!
    
    
    var arrDiccionarios: NSArray!
    //nota que estoy creando la variable, pero no existe el objeto

    //-------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(
            forResource: "Property List",
            ofType: "plist"
            )!
        arrDiccionarios = NSArray(contentsOfFile: path)
    }
    
    // MARK: - Metodos de Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDiccionarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        
        cell.textLabel?.text = dic["tipo"] as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        
        lbTitle.text = dic["tipo"] as! String
        lbCapacidad.text = dic["capacidad"] as! String
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let preNSNumber = dic["precio"] as! NSNumber
        lbPrecio.text = formatter.string(from: preNSNumber)
        
        let strUrl = dic["urlFoto"] as! String
        let url = URL(string: strUrl)!
        let imgData = NSData(contentsOf: url)!
        imgImage.image = UIImage(data: imgData as! Data)
    }


}

