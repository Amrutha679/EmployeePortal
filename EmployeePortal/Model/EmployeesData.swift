//
//  EmployeesData.swift
//  EmployeePortal
//
//  Created by amrutha on 03/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import Foundation

struct EmployeesData: Codable {
    let status: String
    let data: [Datum]
    let message: String
}

struct Datum: Codable {
    let id: Int
    let employeeName: String
    let employeeSalary, employeeAge: Int
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
