//
//  ViewController.swift
//  EmployeePortal
//
//  Created by amrutha on 03/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    private var employeeViewModel : EmployeesViewModel!
    
    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,Datum>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
        
        self.employeeViewModel = EmployeesViewModel()
        self.employeeViewModel.bindToController = {
            self.updateDataSource()
        }
    }
    func updateDataSource(){
        
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell",items: self.employeeViewModel.empData.data,configureCell:{(cell,evm) in
            cell.employeeIdLabel.text = "\(evm.id)"
            cell.employeeNameLabel.text = evm.employeeName
        })
        
        DispatchQueue.main.async {
            self.employeeTableView.dataSource = self.dataSource
            self.employeeTableView.reloadData()
        }
    }
}

