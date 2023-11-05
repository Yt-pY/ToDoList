//
//  Profile_View.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import SwiftUI

struct Profile_View: View {
    @StateObject var viewModel = Profile_ViewModel()
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("个人信息")
        }
    }
}

#Preview {
    Profile_View()
}
