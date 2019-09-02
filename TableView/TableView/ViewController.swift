//
//  ViewController.swift
//  TableView
//
//  Created by Angel Trevino on 9/2/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var lista = ["angel", "caro", "mariana", "dany"];
    var lista2 = [String]() //Crea un objeto lista vacia
    var lista3 : [String]! //crea un objeto que apunta a una lista pero no existe

    @IBOutlet weak var tbTableView: UITableView!
    
    //------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Users"
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Metodos de delegate  y Data Source
    //------------------------------------------------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Regresa el numero de renglones que vamos a tener
        return lista.count;
    }
    //-------------------------------------------------------------
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        
        celda.textLabel?.text = lista[indexPath.row]
        
        celda.detailTextLabel?.text = "\(indexPath.row)"
        
        celda.imageView?.image = UIImage(named: "user")
        
        return celda;
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaSig = segue.destination as! ViewControllerLabel
        
        let index = tbTableView.indexPathForSelectedRow!
        
        vistaSig.datoMostrar = lista[index.row]
     }

}

