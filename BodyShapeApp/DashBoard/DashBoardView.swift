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
                    
                    DataSummaryView(arrow: "arrow.dowsn",calories: "4.569", numberOfPeopleShowing: 2)
                    Spacer()
                    ButtonView()
                    
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
