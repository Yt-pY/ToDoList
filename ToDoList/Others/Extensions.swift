//
//  Extensions.swift
//  ToDoList
//
//  Created by lpy on 2023/11/5.
//
//完全没看懂

import Foundation

extension Encodable {
    func asdictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
