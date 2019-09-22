//
//  TableViewController.swift
//  Tarea4
//
//  Created by Angel Trevino on 9/21/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaEmpleados = [Empleado]()
    var alturaCelda: Int = 117

    //--------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //changes on view
        self.navigationItem.rightBarButtonItem = self.editButtonItem

        //Creating dummy empleados
        let empleado1 = Empleado(nombre: "Caro", sueldo: 300000, foto: UIImage(named: "image")!, departamento: "Medicina")
        let empleado2 = Empleado(nombre: "Mariana", sueldo: 400000, foto: UIImage(named: "image")!, departamento: "Sistemas")
        let empleado3 = Empleado(nombre: "Dany", sueldo: 350000, foto: UIImage(named: "image")!, departamento: "Letras")
        listaEmpleados += [empleado1, empleado2, empleado3]
    }

    // MARK: - Table view data source
    //------------------------------------------------------------------------
    override func numberOfSections(
        //Here we return the number of sections our view is gonna have
        in tableView: UITableView
    ) -> Int {
        return 1
    }

    //------------------------------------------------------------------------
    override func tableView(
        //Here we return the number of rows to display, here we use the
        //      number of empleados
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return listaEmpleados.count
    }

    //------------------------------------------------------------------------
    override func tableView(
        //Here we put our data in the cell, this time we are using a
        //      Costume table cell, so we need to cast it that way
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> CustomTableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
                
        cell.lbTitulo.text = listaEmpleados[indexPath.row].Nombre
        cell.lbPuesto.text = listaEmpleados[indexPath.row].Departamento
        cell.lbSueldo.text = "\(listaEmpleados[indexPath.row].Sueldo!)"
        cell.imgFoto.image = listaEmpleados[indexPath.row].Foto
        
        return cell
    }
    
    //----------------------------------------------------------------------
    override func tableView(
        //Here we are indicating that our cells are editable
        _ tableView: UITableView,
        canEditRowAt indexPath: IndexPath
    ) -> Bool {
        return true
    }

    //--------------------------------------------------------------------
    override func tableView(
        //Here we perfom the different actions if the table is editable
        _ tableView: UITableView,
        commit editingStyle: UITableViewCell.EditingStyle,
        forRowAt indexPath: IndexPath
    ) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaEmpleados.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    //----------------------------------------------------------------------
    override func tableView(
        //Here we perform the actions if we need to move the cells
        _ tableView: UITableView,
        moveRowAt fromIndexPath: IndexPath,
        to: IndexPath
    ) {
        
        let temp = listaEmpleados[fromIndexPath.row]
        listaEmpleados[fromIndexPath.row] = listaEmpleados[to.row]
        listaEmpleados[to.row] = temp

    }
    
    //----------------------------------------------------------------------
    override func tableView(
        //Here we declare that our cell can move between rows
        _ tableView: UITableView,
        canMoveRowAt indexPath: IndexPath
    ) -> Bool {
        return true
    }
    
    //----------------------------------------------------------------------
    override func tableView(
        //Here we stablish the height of our cell
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        return CGFloat(alturaCelda)
    }

}
