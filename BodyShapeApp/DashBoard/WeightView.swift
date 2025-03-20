//
//  WeightView.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 20.03.2025.
//

import SwiftUI

struct WeightView: View {
    let weight: CGFloat
    let weightUnits: String
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("\(weight,specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                Text("Current Weight")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("2.5")
                        .font(.title)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                Text("Bar filled")
                Rectangle()
                    .fill(.green)
                    .frame(width: screenWidth / 2,height: 10)
                Text("Left to Gain")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    WeightView(weight: 61.2, weightUnits: "lb")}
