//
//  EmployeesViewModel.swift
//  EmployeePortal
//
//  Created by amrutha on 03/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import Foundation

class EmployeesViewModel : NSObject {
    
    private var apiService : APIService!
    private(set) var empData : EmployeesData!{
        didSet {
            self.bindToController()
        }
        
    }
    var bindToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService = APIService()
        getEmpData()
    }
    func getEmpData() {
        
        self.apiService.apiToGetEmployeeData{ (empData) in
            self.empData = empData
        }
    }
}
