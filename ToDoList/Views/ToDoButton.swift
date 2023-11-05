//
//  ToDoButton.swift
//  ToDoList
//
//  Created by lpy on 2023/11/3.
//

import SwiftUI

struct ToDoButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    ToDoButton(title: "Button", background: .pink) {
        //action
    }
}
