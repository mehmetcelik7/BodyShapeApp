//
//  ContentView.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 20.03.2025.
//

import SwiftUI

struct DashBoardView: View {
    var body: some View {
      
            VStack {
                
                
                IconRight(imageName: "circle.grid.cross.fill",angle: 45)
                    .padding()
                VStack(alignment: .leading, spacing: 20) {
                    WelcomeMessageView(userName: "Emily")
                    WeightView(weight: 61.2, weightUnits: "lb")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                    
                Spacer()
          
        }
        
    }
}

#Preview {
    DashBoardView()
}
