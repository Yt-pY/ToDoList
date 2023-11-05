//
//  User.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let Email: String
    let joined: TimeInterval
}
