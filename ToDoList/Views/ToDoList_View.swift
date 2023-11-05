//
//  ToDoList_View.swift
//  ToDoList
//
//  Created by lpy on 2023/10/29.
//

import SwiftUI

struct ToDoList_View: View {
    @StateObject var viewModel = ToDoList_ViewModel()
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("驼驼ToDo")
            .toolbar {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
}

#Preview {
    ToDoList_View(userId: "")
}
