//
//  TableViewController.swift
//  MiniReto2 Protocols & Delegates
//
//  Created by Angel Trevino on 10/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, administraCategorias {
    
    var listaCategorias = [Categoria]()
    var posiblesColores = [UIColor.blue, UIColor.green, UIColor.purple, UIColor.red, UIColor.yellow, UIColor.systemPink, UIColor.cyan]
    
    //-------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    //-----------------------------------------------------------------
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //--------------------------------------------------------------------
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCategorias.count
    }
    //-------------------------------------------------------------------------
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        cell.textLabel?.text = listaCategorias[indexPath.row].strTitulo
        cell.backgroundColor = listaCategorias[indexPath.row].uiColor.withAlphaComponent(0.50)

        return cell
    }
    
    // MARK: - Navigation
    //-----------------------------------------------------------------------
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaCategoria = segue.destination as! ViewController
        vistaCategoria.posiblesColores = posiblesColores
        
        if(segue.identifier == "detail") {
            let indexPath = tableView.indexPathForSelectedRow!
            vistaCategoria.categoria = listaCategorias[indexPath.row]
        }
        
        vistaCategoria.delegado = self
    }
    
    // MARK: - Protocol Methods
    //------------------------------------------------------------------------
    func agregarCategoria(categoria: Categoria) {
        listaCategorias.append(categoria)
        if let position = posiblesColores.firstIndex(of: categoria.uiColor) {
            posiblesColores.remove(at: position)
            tableView.reloadData()
        }
    }
    
    //------------------------------------------------------------------------
    func editarCategoria(nuevoColor: UIColor, viejoColor: UIColor) {
        
        if let position = posiblesColores.firstIndex(of: nuevoColor) {
            posiblesColores.remove(at: position)
            posiblesColores.append(viejoColor)
        }
        
        tableView.reloadData()
    }

}
