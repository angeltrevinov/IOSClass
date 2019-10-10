//
//  ViewController.swift
//  persistenciaCodableParte1A19
//
//  Created by Yolanda Martinez on 10/8/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var empleados = [Empleado]()
    
    func dataFileUrl() -> URL {
          let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
          let pathArchivo = url.appendingPathComponent("Empleados.plist")
          return pathArchivo
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        empleados = [ Empleado(nombre: "Diego", ident: 1234),
                    Empleado(nombre: "Susana", ident: 2345),
                    Empleado(nombre: "Hector", ident: 3456),
                    Empleado(nombre: "Gabriela", ident: 4567)]
    }

    @IBAction func guardarEmpleados(_ sender: UIButton) {
           do {
              let data = try PropertyListEncoder().encode(empleados)
              try data.write(to: dataFileUrl())
           }
           catch {
              print("Save Failed")
           }
       }
       
       @IBAction func obtenerEmpleados(_ sender: UIButton) {
           // borro la lista para verificar que sí se obtengan
           empleados.removeAll()
           
           do {
               let data = try Data.init(contentsOf: dataFileUrl())
               empleados = try PropertyListDecoder().decode([Empleado].self, from: data)
           }
           catch {
               print("Error reading or decoding file")
           }
           
           for emp in empleados {
               print (emp.nombre, emp.ident)
           }
       }

    
}

