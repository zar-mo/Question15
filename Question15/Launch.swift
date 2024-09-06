//
//  Launch.swift
//  Question15
//
//  Created by Abouzar Moradian on 9/6/24.
//

import Foundation

enum ProjectStatus: String{
    case success = "Success"
    case failure = "Failure"
}

struct Launch{
    
    let title: String
    let description: String
    let status: ProjectStatus
}

