//
//  Signup_ViewModel.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class Signup_ViewModel: ObservableObject {
    @Published var name = ""
    @Published var Email = ""
    @Published var password = ""
    
    init() {}
    
    func signup() {
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: Email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           Email: Email,
                           joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asdictionary())
    }
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !Email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
