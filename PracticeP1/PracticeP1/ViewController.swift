//
//  ViewController.swift
//  PracticeP1
//
//  Created by Angel Trevino on 9/18/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

//Remember to connect the delegate and datasource of the table (find it in the arrow)
//      to the view we are using, also add 1 cell and put an id to that cell

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableNotas: UITableView!
    
    //Crea un arreglo vacio de tipo notas
    var listaNotes = [Note]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nota = Note(strTitulo: "Primero", strDesc: "primera nota", creation: Date(), imgImage: UIImage(named: "img1")!)
        
        listaNotes += [nota]
    }
    
    // MARK: - Table Methods
    //--------------------------------------------------------------------------------------------
    func tableView(
        //Here we put how many rows there are
        _ tableView: UITableView, numberOfRowsInSection section: Int
        ) -> Int {
        return listaNotes.count
    }
    
    //----------------------------------------------------------------------------------------------
    func tableView(
        //Here we put the contents of a cell
        _ tableView: UITableView, cellForRowAt indexPath: IndexPath
        ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = listaNotes[indexPath.row].strTitulo
        cell.imageView?.image = listaNotes[indexPath.row].imgImage
        
        return cell
    }

     // MARK: - Navigation
     //-------------------------------------------------------------------
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "InfoNota") {
        
            let vistaInfo = segue.destination as! ViewControllerNota
            
            let index = tableNotas.indexPathForSelectedRow!
            vistaInfo.desplegarNota = listaNotes[index.row]
        }
        
     }

}

