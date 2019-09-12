//
//  TableViewControllerPrincipal.swift
//  TableViewController
//
//  Created by Angel Trevino on 9/12/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class TableViewControllerPrincipal: UITableViewController {
    
    var listaJugadores = [Jugador]() //creando un objeto de tipo arreglo vacio

    override func viewDidLoad() {
        super.viewDidLoad()

        let jug1 = Jugador(nombre: "Cardenas", puntos: 500, email: "cardenas@gmail.com", imgImage: UIImage(named: "image")!)
        let jug2 = Jugador(nombre: "Mariana", puntos: 1000, email: "mariana@gmail.com", imgImage: UIImage(named: "teddy")!)
        let jug3 = Jugador(nombre: "Dany", puntos: 1000, email: "dany@gmail.com", imgImage: UIImage(named: "tux")!)
        
        listaJugadores += [jug1, jug2, jug3]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        cell.imageView?.image = listaJugadores[indexPath.row].imgImage
        
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaInfo = segue.destination as! ViewController
        
        let index = tableView.indexPathForSelectedRow!
        vistaInfo.jugar = listaJugadores[index.row]
    }

}
