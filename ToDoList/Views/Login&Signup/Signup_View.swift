//
//  Signup_View.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import SwiftUI

struct Signup_View: View {
    @StateObject var viewModel = Signup_ViewModel()
    
    var body: some View {
        VStack {
            //顶头
            Header_View(title: "注册",
                        subtitle: "开始咩咩",
                        angle: -10,
                        background: .orange)
            //注册信息
            Form {
                TextField("昵称",text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                TextField("邮箱",text: $viewModel.Email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                TextField("密码",text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                ToDoButton(
                    title: "注册",
                    background: .green)
                {
                    //注册操作
                    viewModel.signup()
                }
            }
        }
        //这里的格式跳转有问题？
        //.offset(y: -50)
        //Spacer()
    }
}

#Preview {
    Signup_View()
}
