//
//  EmployeeTableViewCell.swift
//  EmployeePortal
//
//  Created by amrutha on 03/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    
    var employee : Datum?{
        
        didSet {
            employeeIdLabel.text = "\(employee?.id)"
            employeeNameLabel.text = employee?.employeeName
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
