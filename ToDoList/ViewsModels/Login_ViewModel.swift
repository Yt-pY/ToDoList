//
//  Login_ViewModel.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import FirebaseAuth
import Foundation

class Login_ViewModel: ObservableObject {
    @Published var Email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        //Try log in
        Auth.auth().signIn(withEmail: Email, password: password)
    }
    
    //验证合法
    private func validate() -> Bool {
        guard !Email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "请将手机号和密码输入完整"
            return false
        }
        return true
    }
}
