//
//  TableViewControllerActividades.swift
//  protocolosParaCompletar
//
//  Created by Yolanda Martinez on 9/24/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class TableViewControllerActividades: UITableViewController, protocolAgregarActividad {

    var listaAct = [Actividad]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let act1 = Actividad(nombreAct: "Tarea 1")
        let act2 = Actividad(nombreAct: "Examen 1")
        let act3 = Actividad(nombreAct: "Tarea 2")
        listaAct += [act1, act2, act3]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaAct.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        cell.textLabel?.text = listaAct[indexPath.row].nombreAct
        cell.detailTextLabel?.text = "\(listaAct[indexPath.row].calif)"

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "details") {
            
            let vistaDetails = segue.destination as! ViewController
            let index = tableView.indexPathForSelectedRow!
            vistaDetails.inputActividad = listaAct[index.row]
            vistaDetails.delegado = self
            
        }
        
    }
    
    //MARK: - Metodos del Protocolo agregar Jugador
    func agregaActividad(act: Actividad) {
        tableView.reloadData();
    }
    

}
