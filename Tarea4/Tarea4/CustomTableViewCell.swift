//
//  CustomTableViewCell.swift
//  Tarea4
//
//  Created by Angel Trevino on 9/21/19.
//  Copyright © 2019 Angel Odiel Treviño Villanueva. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbTitulo: UILabel!
    @IBOutlet weak var lbPuesto: UILabel!
    @IBOutlet weak var lbSueldo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
