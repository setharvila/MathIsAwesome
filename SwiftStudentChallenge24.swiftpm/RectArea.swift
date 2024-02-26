//
//  RectArea.swift
//  Math
//
//  Created by Seth Arvila on 2/15/24.
//

import SwiftUI

struct RectArea: View {
    @State var inHeight: Double = 200
    @State var inWidth: Double = 50
    var body: some View {
        VStack{
            
            Text("Rectangle")
                .font(.largeTitle)
                .bold()
                
            Text("Area = Width x Height")
                .font(.caption)
            
            Spacer()
                    Rectangle()
                        .fill(.clear)
                        .border(Color.green, width: 10)
                    .frame(width: inWidth, height: inHeight, alignment: .center)

    
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(.ultraThickMaterial)

                
                VStack{
                    Text("Area: \((inWidth * inHeight).formatted(.number)) sq units")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    Text("Width: \(inWidth.formatted(.number)) units")
                    Slider(value: $inWidth, in: 25...500, step: 1)
                    Text("Height: \(inHeight.formatted(.number)) units")
                    Slider(value: $inHeight, in: 25...300, step: 1)
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
    RectArea()
}
