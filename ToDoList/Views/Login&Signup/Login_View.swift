//
//  Login_View.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import SwiftUI

struct Login_View: View {
    
    @StateObject var viewModel = Login_ViewModel()

    
    var body: some View {
        NavigationStack {
            VStack {
                //顶头
                Header_View(title: "驼驼ToDo",
                            subtitle: "咩完所有任务",
                            angle: 10,
                            background: .pink)

                //登录表格
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                        
                    }
                    TextField("邮箱",text: $viewModel.Email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    TextField("密码",text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    ToDoButton(
                        title: "登录",
                        background: .blue)
                    {
                        //登录操作
                        viewModel.login()
                    }
                }
                
                //注册
                NavigationLink("注册", destination: Signup_View())
                .padding(.bottom,50)
            }
        }
    }
}

#Preview {
    Login_View()
}
