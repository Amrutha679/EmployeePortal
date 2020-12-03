//
//  APIService.swift
//  EmployeePortal
//
//  Created by amrutha on 03/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import Foundation

class APIService: NSObject {
    
    private let sourceURL = URL(string: "http://dummy.restapiexample.com/api/v1/employe")!
    func apiToGetEmployeeData(completion: @escaping (EmployeesData) -> ()){
        URLSession.shared.dataTask(with: sourceURL){(data,urlResponse,error) in
            
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                let empData = try! jsonDecoder.decode(EmployeesData.self, from: data)
                
            }
            
        }.resume()
    }
    
}
