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
    func editarCategoria(nuevoColor: UIColor) -> Void
}

//MARK: - Class
//==============================================================
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tfNombreCategoria: UITextField!
    
    var posiblesColores = [UIColor]()
    var strNombreCategoria: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Table Functions
    //---------------------------------------------------------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posiblesColores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellColors")!
        
        cell.backgroundColor = posiblesColores[indexPath.row].withAlphaComponent(0.75)
        
        return cell;
    }

}

