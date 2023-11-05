//
//  Header_View.swift
//  ToDoList
//
//  Created by lpy on 2023/11/3.
//

import SwiftUI

struct Header_View: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
                    .font(.system(size: UIScreen.main.bounds.width / 6))
                Text(subtitle)
                    .foregroundStyle(Color.white)
                    .font(.system(size: UIScreen.main.bounds.width / 13))
            }
            .padding(.top, 60)
        }
        .offset(y: -82)
        .frame(width: UIScreen.main.bounds.width * 2, height: 300)
    }
}

#Preview {
    Header_View(title: "Title",
                subtitle: "Subtitle",
                angle: 10,
                background: .blue)
    
}
