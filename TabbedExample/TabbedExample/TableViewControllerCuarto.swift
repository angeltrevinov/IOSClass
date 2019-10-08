//
//  TableViewControllerCuarto.swift
//  TabbedExample
//
//  Created by Angel Trevino on 10/7/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class TableViewControllerCuarto: UITableViewController {
    
    var Lista = ["A", "B", "C", "D", "E"]
    var datoLogin: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        isModalInPresentation = true;
        title = "Letras";

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
        return Lista.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        cell.textLabel?.text = Lista[indexPath.row]

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaSiguiente = segue.destination as! ViewControllerQuinto
        
        let index = tableView.indexPathForSelectedRow!
        vistaSiguiente.datoMostrar = Lista[index.row] + " " + datoLogin
    }

}
