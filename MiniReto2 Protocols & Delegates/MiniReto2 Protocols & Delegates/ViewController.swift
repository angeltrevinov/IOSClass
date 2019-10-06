//
//  ViewController.swift
//  MiniReto2 Protocols & Delegates
//
//  Created by Angel Trevino on 10/5/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

//MARK: - Protocol
//===============================================================
protocol administraCategorias {
    func agregarCategoria(categoria: Categoria) -> Void
    func editarCategoria(nuevoColor: UIColor, viejoColor: UIColor) -> Void
}

//MARK: - Class
//==============================================================
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tfNombreCategoria: UITextField!
    
    var delegado: administraCategorias!
    var posiblesColores = [UIColor]()
    var categoria: Categoria!
    var agregarColor: UIColor!
    
    @IBOutlet weak var tbTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(categoria != nil) {
            self.title = "Editar " + categoria.strTitulo
            tfNombreCategoria.text = categoria.strTitulo
            tfNombreCategoria.isEnabled = false;
        } else {
            self.title = "Nueva Categoria"
            tfNombreCategoria.isEnabled = true;
        }
        
    }
    
    //MARK: - Table Functions
    //---------------------------------------------------------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posiblesColores.count
    }
    
    //------------------------------------------------------------------
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellColors")!
        cell.backgroundColor = posiblesColores[indexPath.row].withAlphaComponent(0.50)
        return cell;
    }
    
    //--------------------------------------------------------------
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tfNombreCategoria.text != "" {

            let uiColor = posiblesColores[indexPath.row]
            
            if(tfNombreCategoria.isEnabled) {
                
                let nuevaCategoria = Categoria(strTitulo: tfNombreCategoria.text!, uiColor: uiColor)
                delegado.agregarCategoria(categoria: nuevaCategoria)
            } else {
                delegado.editarCategoria(nuevoColor: uiColor, viejoColor: categoria.uiColor)
                categoria.uiColor = uiColor
            }
            
            navigationController?.popToRootViewController(animated: true)
 
        }
        
    }
    
    //MARK: - Navigation Methods
    @IBAction func unwindColor(unwindSegue: UIStoryboardSegue) {
        posiblesColores.append(agregarColor)
        tbTable.reloadData()
    }
}

