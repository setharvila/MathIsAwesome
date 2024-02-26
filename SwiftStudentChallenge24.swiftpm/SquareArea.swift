//
//  SquareArea.swift
//  Math
//
//  Created by Seth Arvila on 2/15/24.
//

import SwiftUI

struct SquareArea: View {
    @State var inBase: Double = 200
    var body: some View {
        VStack{
            
            Text("Square")
                .font(.largeTitle)
                .bold()
            
            Text("Area = Base x Base")
                .font(.caption)
            
            Spacer()
            Rectangle()
                .fill(.clear)
                .border(Color.green, width: 10)
                .frame(width: inBase, height: inBase, alignment: .center)
            
            
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(.ultraThickMaterial)
                
                
                VStack{
                    Text("Area: \((inBase*inBase).formatted(.number)) sq units")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    Text("Base: \(inBase.formatted(.number)) units")
                    Slider(value: $inBase, in: 25...300, step: 1)
                    
                        .frame(width: 350)
                    
                }
                
            }
            .frame(width: 450, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .padding()
                
            }
        }
    
}


    #Preview{
        SquareArea()
    }
        
