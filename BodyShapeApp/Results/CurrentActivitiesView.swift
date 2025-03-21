//
//  CurrentActivitiesView.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct CurrentActivitiesView: View {
    let selectedWeightUnits = "lbs"
    var body: some View {
        VStack(spacing: 30) {
            VStack(spacing: 0) {
                ResultsTopRow()
                    .padding()
                CalendarBarView(
                    dailyData: [
                        .init(
                            day: "Mon",
                            percentage: 0.6,
                            amount: 1),
                        .init(
                            day: "Tue",
                            percentage: 0.3,
                            amount: 5),
                        .init(
                            day: "Wed",
                            percentage: 0.5,
                            amount: 8),
                        .init(
                            day: "Thu",
                            percentage: 1.0,
                            amount: 12),
                        .init(
                            day: "Fri",
                            percentage: 0.3,
                            amount: 15)
                    ],
                    height: 80,
                    offsetY: -5,
                    selectedWeight: 12)
                
                
               
            }
            Text("main activities")
            
            HStack {
                Text("Your plan for December, 2022")
                Text("1.8")
                Text(selectedWeightUnits)
            }
        }
    }
}



#Preview {
    CurrentActivitiesView()
}
