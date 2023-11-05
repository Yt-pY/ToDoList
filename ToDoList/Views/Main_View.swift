//
//  ContentView.swift
//  ToDoList
//
//  Created by lpy on 2023/10/27.
//

import SwiftUI

struct Main_View: View {
    @StateObject var viewModel = Main_ViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView

        } else {
            Login_View()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoList_View(userId: viewModel.currentUserId)
                .tabItem {
                    Label("ToDo", systemImage: "house")
                }
            Profile_View()
                .tabItem {
                    Label("我", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    Main_View()
}
