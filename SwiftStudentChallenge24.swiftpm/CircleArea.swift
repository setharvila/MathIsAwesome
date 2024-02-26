//
//  CircleArea.swift
//  Math
//
//  Created by Seth Arvila on 2/25/24.
//

import SwiftUI

struct CircleArea: View {
    @State var inRad: Double = 100
    
    var body: some View {
        VStack{
            
            Text("Circle")
                .font(.largeTitle)
                .bold()
                
            Text("Area = pi (3.14) x Radius (The width from the center to an edge")
                .font(.caption)
            
            Spacer()
                Circle()
                .stroke(lineWidth: 10)
                .fill(.green)
                
                .frame(height: (inRad * 2))
            
                
                

            
    
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(.ultraThickMaterial)

                
                VStack{
                    Text("Area: \(((3.14 * inRad)).formatted(.number)) sq units")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    Text("Radius: \(inRad.formatted(.number)) units")
                    Slider(value: $inRad, in: 25...150, step: 1)
                  
                }
                .frame(width: 350)
                
            }
            .frame(width: 450, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .padding()
            
        }
    }
            
}

#Preview {
    CircleArea()
}
