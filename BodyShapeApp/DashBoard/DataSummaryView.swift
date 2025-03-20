//
//  DataSummaryView.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 20.03.2025.
//

import SwiftUI

struct DataSummaryView: View {
    
    let arrow: String
    let calories: String
    let delta = 10.0
    let percent1 = 0.6
    let percent2 = 0.4
    let peopleImages = [
        person1,person2,person3,person4
    ]
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                HStack(spacing: 15) { // first row
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.lightPurple)
                        .frame(width: geometry.size.width * percent1 - delta)
                        .overlay(
                            VStack {
                                HStack {
                                    
                                    Image(systemName: "fork.knife")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(.white)
                                        .clipShape(Circle())
                                    
                                    Text("36%")
                                    Image(systemName: arrow)
                                    
                                }
                                HStack(alignment: .bottom) {
                                    Text(calories)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Calories")
                                        .font(.subheadline)
                                }
                            }
                        )
                    
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1)
                        .overlay(
                            VStack{
                                Image(systemName: "figure.walk")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(lightPurple)
                                    .clipShape(Circle())
                                
                                Text("4.523")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                            }
                                
                        ).frame(width: geometry.size.width * (1-percent1) - delta  )
                                        
                }
                .frame(height: geometry.size.width * (1-percent1) - delta)
                
                
                
            }
        }
        
    }
}

#Preview {
    DataSummaryView(arrow: "arrow.dowsn",calories: "4.569")
}
