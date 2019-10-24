//
//  TableViewController.swift
//  SecondPartial
//
//  Created by Angel Trevino on 21/10/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, administrarNumeros {
    
    var arrNumeros = [Int]()
    
     func dataFileUrl() -> URL {
           let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
           let pathArchivo = url.appendingPathComponent("Jugadores.plist")
           return pathArchivo
    }
      

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(aplicacionTermina(notification:)),
            name: UIApplication.didEnterBackgroundNotification,
            object: app
        )
        
        _obtenerNumeros()
        
        if(arrNumeros.count == 0) {
           let randomNumber = Int(arc4random() % 5 + 1)
           arrNumeros.append(randomNumber)
        }
    }
    
    func _guardarJugadores() {
           
            do {
                let data = try PropertyListEncoder().encode(arrNumeros)
                try data.write(to: dataFileUrl())
             }
             catch {
                print("Save Failed")
             }
           
       }
    
    func _obtenerNumeros() {
        
        do {
            let data = try Data.init(contentsOf: dataFileUrl())
            arrNumeros = try PropertyListDecoder().decode([Int].self, from: data)
        }
        catch {
            print("Error reading or decoding file")
        }
    }
    
    @IBAction func aplicacionTermina(notification: NSNotification){
        _guardarJugadores();
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrNumeros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        cell.textLabel?.text = "\( arrNumeros[indexPath.row])"

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaInfo = segue.destination as! ViewController
        
        let index = tableView.indexPathForSelectedRow!
        vistaInfo.numberRecieve = arrNumeros[index.row]
        vistaInfo.delegado = self
    }
    
    //------------------------------------------------------------------------
    func agregarNumero(numero: Int) {
        arrNumeros.append(numero);
        tableView.reloadData()
    }
    
    @IBAction func unwindAgregar(unwindSegue: UIStoryboardSegue) {
        
    }

}
