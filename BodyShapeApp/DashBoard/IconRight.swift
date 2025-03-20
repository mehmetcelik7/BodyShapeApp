//
//  IconRight.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 20.03.2025.
//

import SwiftUI

struct IconRight: View {
    let imageName: String
    var angle: Double = 0.0
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: imageName)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(angle), axis: (x:0,y:0,z:1))
            
        }
    }
}

#Preview {
    VStack {
        IconRight(imageName: "circle.grid.cross.fill")
            .padding()
        Spacer()
    }
       
}
