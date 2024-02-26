//
//  LessonButton.swift
//  Math
//
//  Created by Seth Arvila on 2/25/24.
//

import SwiftUI

struct LessonButton: View {
    var mySymbol: String
    var lessonTitle: String
    var lessonDescription: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15.0)
                .fill(.ultraThickMaterial)
                .padding()
            HStack{
                Image(systemName: mySymbol)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, alignment: .center)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .padding()
                
                
                    
                    
                VStack{
                    Text(lessonTitle)
                        .frame(width: 200, alignment: .leading)
                        .font(.title2)
                        .bold()
                        
                    Text(lessonDescription)
                        .frame(width: 200, alignment: .leading)
                        .font(.subheadline)
                        .foregroundStyle(.primary)
                    
                }
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding()
                
            }
            .padding()
        }
        .frame(width: 500, height: 150, alignment: .leading)
    }
}

#Preview {
    LessonButton(mySymbol: "square.fill", lessonTitle: "Square", lessonDescription: "A square is a square")
}
