//
//  TableViewController.swift
//  ejemJugadoresProtocolos
//
//  Created by Yolanda Martinez on 10/9/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregarJugador {

    var listaJugadores = [Jugador]()
    
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
        
        _obtenerJugadores();

        if(listaJugadores.count == 0) {
            
            var jugador = Jugador(nombre: "Juan", puntos: 2500, email: "juan@hotmail.com")
            listaJugadores.append(jugador)
            
            jugador = Jugador(nombre: "Carolina", puntos: 2800, email: "caro@gmail.com")
            listaJugadores.append(jugador)
            
            jugador = Jugador(nombre: "Karla", puntos: 3200, email: "karla@gmail.com")
            listaJugadores.append(jugador)
            
        }
           
           title = "Jugadores"
       }
    
    func _guardarJugadores() {
        
         do {
             let data = try PropertyListEncoder().encode(listaJugadores)
             try data.write(to: dataFileUrl())
          }
          catch {
             print("Save Failed")
          }
        
    }
    
    func _obtenerJugadores() {
        
        do {
            let data = try Data.init(contentsOf: dataFileUrl())
            listaJugadores = try PropertyListDecoder().decode([Jugador].self, from: data)
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

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return listaJugadores.count
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.imageView?.image = UIImage(named: "user")
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre

        return cell
    }

     // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewAgregar = segue.destination as! ViewController
        viewAgregar.delegado = self
    }

    
    //MARK: - Métodos del protocolo Agregar Jugador
    func agregaJugador(jug: Jugador) {
        listaJugadores.append(jug)
        tableView.reloadData()
    }

}
